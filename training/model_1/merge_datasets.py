import os
import shutil
import re
# Ensure tqdm is installed: pip install tqdm
from tqdm import tqdm

# --- Configuration: Define Paths ---
CUB_DATA_DIR = r"D:\BirdDetector\training\model_1\Data\cub-200"
NABIRDS_DATA_DIR = r"D:\BirdDetector\training\model_1\Data\nabirds"
FINAL_DATA_DIR = r"D:\BirdDetector\training\model_1\Data\data_final"

# --- Helper Function: Standardize Species Names ---
def standardize_species_name(raw_name):
    # 1. For CUB: Remove leading numbers and dots (e.g., "001.")
    name = re.sub(r'^\d+\.', '', raw_name)
    # 2. For NABirds: Remove parentheses and content inside (e.g., "(adult)")
    name = re.sub(r'\s*\(.*?\)', '', name)
    # 3. Replace spaces and hyphens with underscores
    name = name.replace(' ', '_').replace('-', '_')
    # 4. Clean up any double underscores resulting from the above
    name = re.sub(r'_+', '_', name)
    # 5. Title case for consistency and strip whitespace
    name = name.strip().title()
    return name

# --- Main Processing Logic ---
def merge_datasets():
    if not os.path.exists(FINAL_DATA_DIR):
        os.makedirs(FINAL_DATA_DIR)
        print(f"Created destination directory: {FINAL_DATA_DIR}")
    else:
        print(f"Destination directory exists: {FINAL_DATA_DIR}")
        print("WARNING: This will overwrite/add files to the existing folder.")

    total_cub_images = 0
    total_nabirds_images = 0
    species_set = set()

    print("\n" + "="*40)
    print(" PHASE 1: Processing CUB-200 Dataset")
    print("="*40)

    # Get list of species folders
    cub_species_folders = [f for f in os.listdir(CUB_DATA_DIR) if os.path.isdir(os.path.join(CUB_DATA_DIR, f))]
    
    # Use tqdm as a function around the list of folders
    for species_folder in tqdm(cub_species_folders, desc="Processing CUB Species"):
        standardized_name = standardize_species_name(species_folder)
        species_set.add(standardized_name)

        dest_species_dir = os.path.join(FINAL_DATA_DIR, standardized_name)
        os.makedirs(dest_species_dir, exist_ok=True)

        source_species_dir = os.path.join(CUB_DATA_DIR, species_folder)

        for filename in os.listdir(source_species_dir):
            if filename.lower().endswith(('.jpg', '.jpeg', '.png')):
                source_path = os.path.join(source_species_dir, filename)
                dest_filename = f"cub_{filename}"
                dest_path = os.path.join(dest_species_dir, dest_filename)
                
                shutil.copy2(source_path, dest_path)
                total_cub_images += 1

    print(f"\nCUB-200 processing complete. Copied {total_cub_images} images.")

    print("\n" + "="*40)
    print(" PHASE 2: Processing NABirds Dataset")
    print("="*40)

    # Load NABirds Metadata
    class_id_to_name = {}
    try:
        with open(os.path.join(NABIRDS_DATA_DIR, 'classes.txt'), 'r') as f:
            for line in f:
                parts = line.strip().split(' ', 1)
                if len(parts) == 2:
                    class_id_to_name[parts[0]] = standardize_species_name(parts[1])
    except FileNotFoundError:
         print(f"Error: classes.txt not found in {NABIRDS_DATA_DIR}")
         exit()

    image_id_to_class = {}
    try:
        with open(os.path.join(NABIRDS_DATA_DIR, 'image_class_labels.txt'), 'r') as f:
            for line in f:
                parts = line.strip().split(' ')
                if len(parts) == 2:
                    image_id_to_class[parts[0]] = parts[1]
    except FileNotFoundError:
         print(f"Error: image_class_labels.txt not found in {NABIRDS_DATA_DIR}")
         exit()

    try:
        with open(os.path.join(NABIRDS_DATA_DIR, 'images.txt'), 'r') as f:
            image_lines = f.readlines()
    except FileNotFoundError:
         print(f"Error: images.txt not found in {NABIRDS_DATA_DIR}")
         exit()

    # Process NABirds Images
    for line in tqdm(image_lines, desc="Processing NABirds Images"):
        parts = line.strip().split(' ')
        if len(parts) != 2: continue
        image_id, relative_path = parts
        
        class_id = image_id_to_class.get(image_id)
        if not class_id: continue
        
        standardized_name = class_id_to_name.get(class_id)
        if not standardized_name: continue

        species_set.add(standardized_name)

        # IMPORTANT: The relative path uses forward slashes, we must fix it for Windows
        relative_path_fixed = relative_path.replace('/', os.sep)
        
        # --- THE FIX IS HERE ---
        # We explicitly add the 'images' subdirectory to the source path.
        source_path = os.path.join(NABIRDS_DATA_DIR, 'images', relative_path_fixed)
        # -----------------------
        
        dest_species_dir = os.path.join(FINAL_DATA_DIR, standardized_name)
        os.makedirs(dest_species_dir, exist_ok=True)

        original_filename = os.path.basename(relative_path_fixed)
        dest_filename = f"nabirds_{original_filename}"
        dest_path = os.path.join(dest_species_dir, dest_filename)

        if os.path.exists(source_path):
            shutil.copy2(source_path, dest_path)
            total_nabirds_images += 1
        else:
            # Some files listed in metadata might be missing from the download, this is normal.
            pass 

    print(f"\nNABirds processing complete. Copied {total_nabirds_images} images.")

    # --- Final Summary ---
    print("\n" + "="*40)
    print(" MERGE COMPLETE! ")
    print("="*40)
    print(f"Total CUB-200 Images: {total_cub_images}")
    print(f"Total NABirds Images: {total_nabirds_images}")
    print(f"GRAND TOTAL IMAGES:   {total_cub_images + total_nabirds_images}")
    print(f"Total Unique Species: {len(species_set)}")
    print(f"Final Dataset Location: {FINAL_DATA_DIR}")
    print("="*40)

if __name__ == "__main__":
    merge_datasets()