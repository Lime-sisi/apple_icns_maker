#!/bin/zsh

# TO-DO: Replace the picture file's path here
CPATH="$HOME/Downloads/BM3.png"
# Check existence  
if [ ! -f "$CPATH" ]; then
    echo "🔕 the file you just specified doesn't exist" 
    exit 1
fi

# Make the iconset folder if it doesn't exist
# TODO: Replace 'YOUR_FOLDER_NAME' with your desired iconset folder name.
# NOTE: The folder name **must** end with '.iconset' for iconutil to work correctly.
ICONSET_DIR="YOUR_FOLDER_NAME.iconset" 
mkdir -p "$ICONSET_DIR"
echo "🖇️  Generating icon sizes..."

# Generate all icon sizjpg
sips -z 16 16     "$CPATH" --out "$ICONSET_DIR/icon_16x16.png"
sips -z 32 32     "$CPATH" --out "$ICONSET_DIR/icon_16x16@2x.png"
sips -z 32 32     "$CPATH" --out "$ICONSET_DIR/icon_32x32.png"
sips -z 64 64     "$CPATH" --out "$ICONSET_DIR/icon_32x32@2x.png"
sips -z 128 128   "$CPATH" --out "$ICONSET_DIR/icon_128x128.png"
sips -z 256 256  "$CPATH" --out "$ICONSET_DIR/icon_128x128@2x.png"
sips -z 256 256   "$CPATH" --out "$ICONSET_DIR/icon_256x256.png"
sips -z 512 512   "$CPATH" --out "$ICONSET_DIR/icon_256x256@2x.png"
sips -z 512 512   "$CPATH" --out "$ICONSET_DIR/icon_512x512.png"
sips -z 1024 1024   "$CPATH" --out "$ICONSET_DIR/icon_512x512@2x.png"

echo "🛳️  All icon sizes successfully created in $ICONSET_DIR"
# Build the Apple .icns file

echo "🤖 Building .icns file now..."
iconutil -c icns "$ICONSET_DIR"
if [ $? -eq 0 ]; then
    echo "😄 Done! Successfully made the icon!"
else
    echo "⛔️ Error: Failed to create .icns file"
fi


