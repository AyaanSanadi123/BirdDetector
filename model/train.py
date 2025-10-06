import tensorflow as tf
import os
import matplotlib.pyplot as plt  # <-- IMPORT ADDED HERE
from tensorflow.keras.applications.mobilenet_v3 import preprocess_input
# --- 1. Setup: Define paths and parameters ---
DATA_DIR = 'Data'
TRAIN_DIR = os.path.join(DATA_DIR, 'train')
TEST_DIR = os.path.join(DATA_DIR, 'test')

IMG_SIZE = 224
BATCH_SIZE = 32
NUM_CLASSES = 200

# --- 2. Load Data and Configure for Performance ---
train_ds = tf.keras.utils.image_dataset_from_directory(
    TRAIN_DIR,
    image_size=(IMG_SIZE, IMG_SIZE),
    batch_size=BATCH_SIZE
)

validation_ds = tf.keras.utils.image_dataset_from_directory(
    TEST_DIR,
    image_size=(IMG_SIZE, IMG_SIZE),
    batch_size=BATCH_SIZE
)

AUTOTUNE = tf.data.AUTOTUNE
train_ds = train_ds.prefetch(buffer_size=AUTOTUNE)
validation_ds = validation_ds.prefetch(buffer_size=AUTOTUNE)

# --- 3. Prepare the Base Model ---
base_model = tf.keras.applications.MobileNetV3Large(
    input_shape=(IMG_SIZE, IMG_SIZE, 3),
    include_top=False,
    weights='imagenet'
)
base_model.trainable = False

# --- 4. Build the Final Model ---
data_augmentation = tf.keras.Sequential([
    tf.keras.layers.RandomFlip("horizontal"),
    tf.keras.layers.RandomRotation(0.2),
    tf.keras.layers.RandomZoom(0.2),
])

model = tf.keras.Sequential([
    tf.keras.layers.Input(shape=(IMG_SIZE, IMG_SIZE, 3)),
    data_augmentation,
    tf.keras.layers.Lambda(preprocess_input),
    base_model,
    tf.keras.layers.GlobalAveragePooling2D(),
    tf.keras.layers.Dense(NUM_CLASSES, activation='softmax')
])

# --- 5. Compile and Initial Train ---
model.compile(
    optimizer='adam',
    loss='sparse_categorical_crossentropy',
    metrics=['accuracy']
)

print("--- Initial Training Phase ---")
initial_epochs = 4
history = model.fit(
    train_ds,
    epochs=initial_epochs,
    validation_data=validation_ds
)

# --- 6. Fine-Tuning Phase ---
base_model.trainable = True

fine_tune_at = len(base_model.layers) - 20
for layer in base_model.layers[:fine_tune_at]:
    layer.trainable = False

model.compile(
    optimizer=tf.keras.optimizers.Adam(learning_rate=1e-6),
    loss='sparse_categorical_crossentropy',
    metrics=['accuracy']
)

print("\n--- Fine-Tuning Phase ---")
fine_tune_epochs = 1
total_epochs = initial_epochs + fine_tune_epochs

history_fine = model.fit(
    train_ds,
    epochs=total_epochs,
    initial_epoch=history.epoch[-1],
    validation_data=validation_ds
)

# --- 7. Visualize Combined Training Results ---
acc = history.history['accuracy'] + history_fine.history['accuracy']
val_acc = history.history['val_accuracy'] + history_fine.history['val_accuracy']
loss = history.history['loss'] + history_fine.history['loss']
val_loss = history.history['val_loss'] + history_fine.history['val_loss']

plt.figure(figsize=(12, 6))

# --- Accuracy Subplot ---
plt.subplot(1, 2, 1)
plt.plot(acc, label='Training Accuracy')
plt.plot(val_acc, label='Validation Accuracy')
plt.axvline(initial_epochs - 1, color='gray', linestyle='--', label='Start Fine-Tuning')
# ✅ SUGGESTION 2: Set a fixed y-axis for accuracy
plt.ylim([0, 1])
# ✅ SUGGESTION 1: Add axis labels
plt.xlabel('Epoch')
plt.ylabel('Accuracy')
plt.legend(loc='lower right')
plt.title('Training and Validation Accuracy')
# ✅ SUGGESTION 3: Add a grid
plt.grid(True)

# --- Loss Subplot ---
plt.subplot(1, 2, 2)
plt.plot(loss, label='Training Loss')
plt.plot(val_loss, label='Validation Loss')
plt.axvline(initial_epochs - 1, color='gray', linestyle='--', label='Start Fine-Tuning')
# ✅ SUGGESTION 2: Set a cleaner y-axis limit for loss
plt.ylim(bottom=0)
# ✅ SUGGESTION 1: Add axis labels
plt.xlabel('Epoch')
plt.ylabel('Loss')
plt.legend(loc='upper right')
plt.title('Training and Validation Loss')
# ✅ SUGGESTION 3: Add a grid
plt.grid(True)

# ✅ SUGGESTION 4: Save the figure before showing it
plt.savefig('training_performance.png')
plt.show()

print("Script finished! Plot saved to 'training_performance.png'")
