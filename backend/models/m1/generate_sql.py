import json
import wikipediaapi
import re

# Initialize Wikipedia (User Agent is required by Wikipedia Policy)
wiki = wikipediaapi.Wikipedia(
    user_agent='BirdAppGenerator/1.0 (contact@example.com)',
    language='en'
)

def get_clean_data(bird_class):
    # 1. Format Name: "American_Avocet" -> "American Avocet"
    human_name = bird_class.replace("_", " ")
    
    # 2. Find Page
    page = wiki.page(human_name)
    if not page.exists():
        page = wiki.page(human_name + " (bird)")
    
    if not page.exists():
        print(f"⚠️ Not Found: {human_name}")
        return None

    # 3. Get Description (First 500 chars is usually the best intro)
    summary = page.summary[0:600].replace("'", "''") # Escape single quotes for SQL
    
    # 4. Try to grab Scientific Name from the full title or summary
    # Wikipedia often puts it in the first sentence like "The American avocet (Recurvirostra americana)..."
    sci_name_match = re.search(r'\((.*?)\)', page.summary[0:100])
    sci_name = sci_name_match.group(1) if sci_name_match else "Unknown"
    
    # Cleaning up if the regex caught something else (basic check)
    if len(sci_name) > 40 or "pronounced" in sci_name: 
        sci_name = "Unknown"

    return {
        "class_name": bird_class,
        "common_name": human_name,
        "scientific_name": sci_name,
        "description": summary + "...",
        "url": page.fullurl
    }

# --- MAIN EXECUTION ---
print("Reading class_names.json...")
try:
    with open('class_names.json', 'r') as f:
        bird_list = json.load(f)
except FileNotFoundError:
    print("Error: class_names.json not found!")
    exit()

sql_lines = []
print(f"Fetching data for {len(bird_list)} birds. This might take a minute...")

for i, bird in enumerate(bird_list):
    data = get_clean_data(bird)
    if data:
        # Create the SQL insert line
        sql = f"""
        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            '{data['class_name']}', 
            '{data['common_name']}', 
            '{data['scientific_name']}', 
            '{data['description']}', 
            '{data['url']}'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        """
        sql_lines.append(sql)
        print(f"[{i+1}/{len(bird_list)}] ✅ {data['common_name']}")

# Save to file
with open('seed_species.sql', 'w', encoding='utf-8') as f:
    f.write("\n".join(sql_lines))

print("\n🎉 Done! Created 'seed_species.sql'. Run this file in your Supabase SQL Editor.")