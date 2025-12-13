import torch
import sys

print(f"Python Version: {sys.version}")
print(f"PyTorch Version: {torch.__version__}")
print("-" * 20)

# Check if CUDA (GPU support) is available
if torch.cuda.is_available():
    print("✅ SUCCESS! PyTorch found a GPU.")
    print(f"GPU Name: {torch.cuda.get_device_name(0)}")
    print(f"CUDA Version: {torch.version.cuda}")
    
    # Test by moving a small tensor to the GPU
    try:
        x = torch.tensor([1.0, 2.0, 3.0]).cuda()
        print("\nTest tensor successfully created on GPU:")
        print(x)
        print("\nYou are ready to start training with PyTorch!")
    except Exception as e:
        print(f"\n❌ ERROR: GPU found, but could not use it. {e}")
else:
    print("❌ ERROR: PyTorch could not find a GPU. Something is still wrong.")