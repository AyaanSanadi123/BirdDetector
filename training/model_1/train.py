import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader
from torchvision import datasets, models, transforms
import os
import json
import time
import copy
from tqdm import tqdm

# --- 1. CONFIGURATION ---
DATA_DIR = r"D:\BirdDetector\training\model_1\Data\data_final"
MODEL_SAVE_PATH = "best_efficientnet_b1.pth"
CLASS_NAMES_SAVE_PATH = "class_names.json"

# EfficientNetV2-S optimal input size
IMG_SIZE = 240
# Batch size for RTX 4050 (6GB VRAM)
BATCH_SIZE = 32
# Total epochs to train
EPOCHS = 25
# Learning rate
LEARNING_RATE = 0.001

# Detect GPU
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
print(f"--- Training Configuration ---")
print(f"Device: {device}")
if device.type == 'cuda':
    print(f"GPU: {torch.cuda.get_device_name(0)}")
print(f"Data Directory: {DATA_DIR}")
print(f"Image Size: {IMG_SIZE}x{IMG_SIZE}")
print(f"Batch Size: {BATCH_SIZE}")
print(f"Epochs: {EPOCHS}")
print("-" * 30)


def main():
    # --- 2. DATA PREPARATION ---
    print("\nSetting up data transforms and loaders...")
    
    # Standard ImageNet normalization
    normalize = transforms.Normalize(mean=[0.485, 0.456, 0.406],
                                     std=[0.229, 0.224, 0.225])

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
    
    # 80/20 split
    train_size = int(0.8 * len(full_dataset))
    val_size = len(full_dataset) - train_size
    
    train_dataset, val_dataset = torch.utils.data.random_split(
        full_dataset, [train_size, val_size], generator=torch.Generator().manual_seed(42)
    )
    
    train_dataset.dataset.transform = data_transforms['train']
    val_dataset.dataset.transform = data_transforms['val']

    # --- SPEED UPDATE: Set num_workers=2 for parallel loading ---
    # This uses 2 background processes to load data, which is faster than 0
    # but more stable on Windows than 4.
    dataloaders = {
        'train': DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True, num_workers=2),
        'val': DataLoader(val_dataset, batch_size=BATCH_SIZE, shuffle=False, num_workers=2)
    }
    
    dataset_sizes = {'train': len(train_dataset), 'val': len(val_dataset)}
    class_names = full_dataset.classes
    num_classes = len(class_names)

    print(f"Data loaded successfully.")
    print(f"Training samples: {dataset_sizes['train']:,}")
    print(f"Validation samples: {dataset_sizes['val']:,}")
    print(f"Number of classes: {num_classes}")
    
    with open(CLASS_NAMES_SAVE_PATH, 'w') as f:
        json.dump(class_names, f)
    print(f"Class names saved to {CLASS_NAMES_SAVE_PATH}")


    # --- 3. MODEL SETUP ---
    print("\nInitializing EfficientNetV2-S model...")
    # Using 's' variant which exists in your torchvision version
    model = models.efficientnet_v2_s(weights="DEFAULT")

    # Freeze base layers
    for param in model.features.parameters():
        param.requires_grad = False

    # Replace classifier head
    num_ftrs = model.classifier[1].in_features
    model.classifier = nn.Sequential(
        nn.Dropout(p=0.3, inplace=True),
        nn.Linear(num_ftrs, num_classes)
    )

    model = model.to(device)

    # --- RESUME LOGIC ---
    # If a saved model exists (from your previous run), load it!
    if os.path.exists(MODEL_SAVE_PATH):
        print(f"\n✅ Found saved model at {MODEL_SAVE_PATH}")
        print("Loading weights to resume training from where we left off...")
        try:
            model.load_state_dict(torch.load(MODEL_SAVE_PATH))
            print("Weights loaded successfully.")
        except Exception as e:
            print(f"Warning: Could not load weights: {e}")
            print("Starting from scratch.")
    else:
        print("\nNo saved model found. Starting from scratch.")
    # ---------------------------

    criterion = nn.CrossEntropyLoss()
    optimizer = optim.AdamW(filter(lambda p: p.requires_grad, model.parameters()), lr=LEARNING_RATE)
    exp_lr_scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=7, gamma=0.9)


    # --- 4. TRAINING LOOP ---
    print("\nStarting training loop...")
    since = time.time()

    # If we just loaded a good model, set best_acc to a reasonable baseline
    best_model_wts = copy.deepcopy(model.state_dict())
    best_acc = 0.0

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

            # Progress bar
            progress_bar = tqdm(dataloaders[phase], desc=f"{phase.capitalize()} Phase", leave=False)
            
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

            # Save if this is the best model so far
            if phase == 'val' and epoch_acc > best_acc:
                best_acc = epoch_acc
                best_model_wts = copy.deepcopy(model.state_dict())
                torch.save(model.state_dict(), MODEL_SAVE_PATH)
                print(f"Found new best model! Saved to {MODEL_SAVE_PATH}")

    time_elapsed = time.time() - since
    print(f'\nTraining complete in {time_elapsed // 60:.0f}m {time_elapsed % 60:.0f}s')
    print(f'Best val Acc: {best_acc:.4f}')

    # Save final best weights again just to be safe
    torch.save(best_model_wts, MODEL_SAVE_PATH)
    print("Script finished. Best model is saved.")

if __name__ == '__main__':
    main()