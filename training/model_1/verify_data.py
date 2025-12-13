import os
import sys

# Define the path to verify
DATA_DIR = r"D:\BirdDetector\training\model_1\Data\data_final"

# Expected numbers from the previous merge log
EXPECTED_CUB = 11788
EXPECTED_NABIRDS = 48562

print(f"Starting verification scan of: {DATA_DIR}")
print("This might take a minute depending on disk speed...")

if not os.path.exists(DATA_DIR):
    print(f"ERROR: Directory not found: {DATA_DIR}")
    sys.exit(1)

total_cub_found = 0
total_nabirds_found = 0
total_other_found = 0
species_folders = 0

# Walk through the directory tree
for root, dirs, files in os.walk(DATA_DIR):
    # Count species folders (subdirectories in the root of data_final)
    if root == DATA_DIR:
        species_folders = len(dirs)
        print(f"Found {species_folders} species subfolders.")

    for filename in files:
        # Check for valid image extensions
        if filename.lower().endswith(('.jpg', '.jpeg', '.png')):
            # Check prefixes based on how merge_datasets.py renamed them
            if filename.startswith("cub_"):
                total_cub_found += 1
            elif filename.startswith("nabirds_"):
                total_nabirds_found += 1
            else:
                # This shouldn't happen if the directory was empty before merge
                total_other_found += 1

grand_total = total_cub_found + total_nabirds_found + total_other_found

print("\n" + "="*40)
print(" VERIFICATION RESULTS ON DISK ")
print("="*40)
print(f"CUB-200 ('cub_') images found:    {total_cub_found:,}")
print(f"NABirds ('nabirds_') images found: {total_nabirds_found:,}")
print(f"Unprefixed images found:          {total_other_found}")
print("-" * 40)
print(f"GRAND TOTAL IMAGES ON DISK:       {grand_total:,}")
print("="*40)

# --- Final Validation Check ---
print("\n--- Validation Against Merge Logs ---")
cub_match = total_cub_found == EXPECTED_CUB
nabirds_match = total_nabirds_found == EXPECTED_NABIRDS

if cub_match:
    print("✅ CUB-200 count matches exactly.")
else:
    print(f"❌ CUB-200 MISMATCH. Expected {EXPECTED_CUB}, found {total_cub_found}.")

if nabirds_match:
    print("✅ NABirds count matches exactly.")
else:
    print(f"❌ NABirds MISMATCH. Expected {EXPECTED_NABIRDS}, found {total_nabirds_found}.")

if cub_match and nabirds_match and total_other_found == 0:
    print("\nSUCCESS: The dataset on disk is perfectly intact according to merge logs.")
else:
    print("\nWARNING: Discrepancies found. Please check the logs.")