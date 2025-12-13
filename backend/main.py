import io
import json
import os
from PIL import Image
from fastapi import FastAPI, File, UploadFile, HTTPException
from fastapi.middleware.cors import CORSMiddleware
import torch
import torch.nn as nn
from torchvision import models, transforms

# Initialize FastAPI app
app = FastAPI()

# --- Configuration ---
origins = [
    "http://localhost:3000",
    "http://127.0.0.1:3000",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# --- Global Variables ---
# BASE_DIR is D:\BirdDetector\backend
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# ----------------- PATH UPDATE START -----------------
# We point specifically to the subfolder "models/m1"
# Make sure the file name matches exactly what you have on disk!
MODEL_FILENAME = "best_efficientnet_finetuned.pth"
JSON_FILENAME = "class_names.json"

MODEL_PATH = os.path.join(BASE_DIR, "models", "m1", MODEL_FILENAME)
JSON_PATH = os.path.join(BASE_DIR, "models", "m1", JSON_FILENAME)
# ----------------- PATH UPDATE END -------------------

# Model Settings (Must match training: 240x240)
IMG_SIZE = 240 

model_instance = None
class_names = []
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# --- Helper: Image Preprocessing ---
def get_transform():
    return transforms.Compose([
        transforms.Resize((IMG_SIZE, IMG_SIZE)),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406],
                             std=[0.229, 0.224, 0.225])
    ])

# --- Startup Event: Load Model ---
@app.on_event("startup")
async def startup_event():
    global model_instance, class_names
    print(f"Starting up on {device}...")
    print(f"Looking for model at: {MODEL_PATH}")

    # 1. Check files
    if not os.path.exists(MODEL_PATH):
        print(f"❌ CRITICAL ERROR: Model file not found at {MODEL_PATH}")
        print("Please check if the file name is 'best_efficientnet_finetuned.pth' or something else.")
        return
    if not os.path.exists(JSON_PATH):
        print(f"❌ CRITICAL ERROR: JSON file not found at {JSON_PATH}")
        return

    # 2. Load Class Names
    try:
        with open(JSON_PATH, "r") as f:
            class_names = json.load(f)
        print(f"✅ Loaded {len(class_names)} class names.")
    except Exception as e:
        print(f"❌ Failed to load class names: {e}")
        return

    # 3. Load Model Architecture & Weights
    try:
        print("Initializing EfficientNetV2-S...")
        # Create empty architecture
        model = models.efficientnet_v2_s(weights=None)
        
        # Recreate the classification head
        num_classes = len(class_names)
        num_ftrs = model.classifier[1].in_features
        model.classifier = nn.Sequential(
            nn.Dropout(p=0.3, inplace=True),
            nn.Linear(num_ftrs, num_classes)
        )

        # Load Weights
        checkpoint = torch.load(MODEL_PATH, map_location=device, weights_only=False)
        model.load_state_dict(checkpoint)
        
        model = model.to(device)
        model.eval()
        model_instance = model
        print("✅ PyTorch Model loaded successfully.")
        
    except Exception as e:
        print(f"❌ Failed to load PyTorch Model: {e}")

# --- The Prediction Endpoint ---
@app.post("/predict/m1")
async def predict(file: UploadFile = File(...)):
    if model_instance is None:
        raise HTTPException(status_code=500, detail="Model not loaded")

    try:
        # 1. Read Image
        contents = await file.read()
        image = Image.open(io.BytesIO(contents)).convert("RGB")

        # 2. Preprocess
        transform_pipeline = get_transform()
        input_tensor = transform_pipeline(image).unsqueeze(0)
        input_tensor = input_tensor.to(device)

        # 3. Predict
        with torch.no_grad():
            outputs = model_instance(input_tensor)
            probabilities = torch.nn.functional.softmax(outputs, dim=1)
            
            top_prob, top_idx = torch.topk(probabilities, 1)
            
            confidence = top_prob.item()
            predicted_index = top_idx.item()
            species_name = class_names[predicted_index]

        print(f"Prediction: {species_name} ({confidence:.2f})")

        return {
            "model_used": "m1",
            "commonName": species_name,
            "confidence": confidence,
            "confidence_percent": f"{confidence * 100:.2f}%"
        }

    except Exception as e:
        print(f"Error during prediction: {e}")
        raise HTTPException(status_code=500, detail=str(e))

@app.get("/")
def read_root():
    return {"status": "BirdDetector PyTorch Backend is running"}