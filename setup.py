import zipfile
import shutil
import json

SHAPES_DIR = "shapes"
FILENAME = "MA_vtd20.zip"

print(f"Unzipping {FILENAME}...", end="")
with zipfile.ZipFile(f"{SHAPES_DIR}/{FILENAME}", 'r') as f:
    f.extractall(f"{SHAPES_DIR}")
shutil.rmtree(f"{SHAPES_DIR}/__MACOSX")
print(". Done.")