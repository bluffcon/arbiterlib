#! python3
import os
import json

def create_files():
    item_name = input("Enter the item name: ").strip()
    namespace = input("Enter the namespace: ").strip()
    item_type = input("Is this an item or a block? (item/block): ").strip().lower()
    
    filename = item_name.replace(" ", "_").lower()
    
    models_dir = "./models/item"
    items_dir = "./items"
    
    os.makedirs(models_dir, exist_ok=True)
    os.makedirs(items_dir, exist_ok=True)
    
    if item_type == "block":
        model_content = {
            "parent": "minecraft:block/cube_all",
            "textures": {
                "all": f"{namespace}:block/{filename}"
            }
        }
    else:
        model_content = {
            "parent": "minecraft:item/generated",
            "textures": {
                "layer0": f"{namespace}:item/{filename}"
            }
        }
    
    model_file_path = os.path.join(models_dir, f"{filename}.json")
    with open(model_file_path, 'w', encoding='utf-8') as f:
        json.dump(model_content, f, indent=2)
    print(f"✓ Created model file: {model_file_path}")
    
    items_content = {
        "model": {
            "type": "minecraft:model",
            "model": f"{namespace}:item/{filename}"
        }
    }
    
    items_file_path = os.path.join(items_dir, f"{filename}.json")
    with open(items_file_path, 'w', encoding='utf-8') as f:
        json.dump(items_content, f, indent=2)
    print(f"✓ Created items file: {items_file_path}")

if __name__ == "__main__":
    print("Item & Model file creation script")
    print("This will create files in ./models/item/ and ./items/")
    print()
    
    while True:
        create_files()
        print()
        
        another = input("Create another item/block? (y/n): ").strip().lower()
        if another != 'y':
            break
    
    print("Done!")
    input("Press Enter to exit...")