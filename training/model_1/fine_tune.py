import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader
from torchvision import datasets, models, transforms
import os
import time
import copy
from tqdm import tqdm
import matplotlib.pyplot as plt # Added for plotting

# --- CONFIGURATION (Safe Mode) ---
DATA_DIR = r"D:\BirdDetector\training\model_1\Data\data_final"
STARTING_WEIGHTS = "best_efficientnet_b1.pth" # Load the 45% model
NEW_SAVE_PATH = "best_efficientnet_finetuned.pth"
PLOT_SAVE_PATH = "training_progress.png" # Where to save the graph

IMG_SIZE = 240  # Keep low resolution for speed/safety
BATCH_SIZE = 16 # Reduced batch size because unfreezing uses more VRAM
EPOCHS = 15     # Fine-tuning happens fast
LEARNING_RATE = 0.0001 # 10x smaller LR for gentle updates

device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
print(f"--- Laptop Fine-Tuning ---")
print(f"Device: {device}")
print(f"Batch Size: {BATCH_SIZE}")
print(f"Learning Rate: {LEARNING_RATE}")

def plot_history(history):
    """Helper function to plot training history"""
    acc = history['train_acc']
    val_acc = history['val_acc']
    loss = history['train_loss']
    val_loss = history['val_loss']
    epochs_range = range(1, len(acc) + 1)

    plt.figure(figsize=(12, 5))

    # Plot Accuracy
    plt.subplot(1, 2, 1)
    plt.plot(epochs_range, acc, label='Training Accuracy')
    plt.plot(epochs_range, val_acc, label='Validation Accuracy')
    plt.legend(loc='lower right')
    plt.title('Training and Validation Accuracy')
    plt.xlabel('Epochs')
    plt.grid(True)

    # Plot Loss
    plt.subplot(1, 2, 2)
    plt.plot(epochs_range, loss, label='Training Loss')
    plt.plot(epochs_range, val_loss, label='Validation Loss')
    plt.legend(loc='upper right')
    plt.title('Training and Validation Loss')
    plt.xlabel('Epochs')
    plt.grid(True)

    plt.savefig(PLOT_SAVE_PATH)
    print(f"\n✅ Training graphs saved to {PLOT_SAVE_PATH}")

def main():
    # --- DATA SETUP ---
    normalize = transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])
    
    data_transforms = {
        'train': transforms.Compose([
            transforms.Resize((IMG_SIZE, IMG_SIZE)),
            transforms.RandomHorizontalFlip(),
            transforms.RandomRotation(15),
            transforms.ColorJitter(brightness=0.1, contrast=0.1),
            transforms.ToTensor(),
            normalize
        ]),
        'val': transforms.Compose([
            transforms.Resize((IMG_SIZE, IMG_SIZE)),
            transforms.ToTensor(),
            normalize
        ]),
    }

    full_dataset = datasets.ImageFolder(DATA_DIR)
    train_size = int(0.8 * len(full_dataset))
    val_size = len(full_dataset) - train_size
    train_dataset, val_dataset = torch.utils.data.random_split(
        full_dataset, [train_size, val_size], generator=torch.Generator().manual_seed(42)
    )
    train_dataset.dataset.transform = data_transforms['train']
    val_dataset.dataset.transform = data_transforms['val']

    # Keep workers low for Windows stability
    dataloaders = {
        'train': DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True, num_workers=2),
        'val': DataLoader(val_dataset, batch_size=BATCH_SIZE, shuffle=False, num_workers=2)
    }
    dataset_sizes = {'train': len(train_dataset), 'val': len(val_dataset)}
    num_classes = len(full_dataset.classes)

    # --- MODEL SETUP ---
    print("\nInitializing Model...")
    model = models.efficientnet_v2_s(weights=None) # Empty shell

    # Rebuild the head exactly as before
    num_ftrs = model.classifier[1].in_features
    model.classifier = nn.Sequential(
        nn.Dropout(p=0.3, inplace=True),
        nn.Linear(num_ftrs, num_classes)
    )

    # Load your trained weights (Phase 1 results)
    if os.path.exists(STARTING_WEIGHTS):
        print(f"✅ Loading Phase 1 weights from {STARTING_WEIGHTS}")
        try:
            model.load_state_dict(torch.load(STARTING_WEIGHTS))
        except:
             model.load_state_dict(torch.load(STARTING_WEIGHTS, weights_only=False))
    else:
        print("❌ Error: Previous model file not found!")
        print(f"Make sure '{STARTING_WEIGHTS}' is in this folder.")
        return

    # UNFREEZE EVERYTHING (The Magic Step)
    print("🔓 Unfreezing entire model for fine-tuning...")
    for param in model.parameters():
        param.requires_grad = True

    model = model.to(device)

    criterion = nn.CrossEntropyLoss()
    # Optimizer now updates ALL parameters
    optimizer = optim.AdamW(model.parameters(), lr=LEARNING_RATE)
    exp_lr_scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=4, gamma=0.9)

    # --- HISTORY STORAGE ---
    history = {
        'train_acc': [], 'val_acc': [],
        'train_loss': [], 'val_loss': []
    }

    # --- TRAINING LOOP ---
    print("\nStarting Fine-Tuning...")
    since = time.time()
    best_model_wts = copy.deepcopy(model.state_dict())
    
    # We want to beat our previous best score (approx 0.45)
    best_acc = 0.45 

    for epoch in range(EPOCHS):
        print(f'\nEpoch {epoch + 1}/{EPOCHS}')
        print('-' * 10)

        for phase in ['train', 'val']:
            if phase == 'train':
                model.train()
            else:
                model.eval()

            running_loss = 0.0
            running_corrects = 0
            
            progress_bar = tqdm(dataloaders[phase], desc=f"{phase.capitalize()}", leave=False)

            for inputs, labels in progress_bar:
                inputs = inputs.to(device)
                labels = labels.to(device)

                optimizer.zero_grad()

                with torch.set_grad_enabled(phase == 'train'):
                    outputs = model(inputs)
                    _, preds = torch.max(outputs, 1)
                    loss = criterion(outputs, labels)

                    if phase == 'train':
                        loss.backward()
                        optimizer.step()

                running_loss += loss.item() * inputs.size(0)
                running_corrects += torch.sum(preds == labels.data)
                progress_bar.set_postfix({'loss': loss.item()})

            if phase == 'train':
                exp_lr_scheduler.step()

            epoch_loss = running_loss / dataset_sizes[phase]
            epoch_acc = running_corrects.double() / dataset_sizes[phase]

            print(f'{phase.capitalize()} Loss: {epoch_loss:.4f} Acc: {epoch_acc:.4f}')

            # Store history
            if phase == 'train':
                history['train_loss'].append(epoch_loss)
                history['train_acc'].append(epoch_acc.item()) # Convert tensor to float
            else:
                history['val_loss'].append(epoch_loss)
                history['val_acc'].append(epoch_acc.item())

            # Save if this is the best model so far
            if phase == 'val' and epoch_acc > best_acc:
                best_acc = epoch_acc
                best_model_wts = copy.deepcopy(model.state_dict())
                torch.save(model.state_dict(), NEW_SAVE_PATH)
                print(f"Found new best model! Saved to {NEW_SAVE_PATH}")

    time_elapsed = time.time() - since
    print(f'\nFine-Tuning complete in {time_elapsed // 60:.0f}m {time_elapsed % 60:.0f}s')
    print(f'Final Best Val Acc: {best_acc:.4f}')
    
    # Generate Plots
    plot_history(history)

if __name__ == '__main__':
    main()