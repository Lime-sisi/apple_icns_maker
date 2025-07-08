## Convert PNG to macOS `.icns` Icon

This script creates all required icon sizes from a source image and generates a valid `.icns` file for macOS. Because "iconutil" only accepts PNG format, Mac users could now use Apple's built-in **Quick Actions > Convert Image** in the Finder's right-click menu to get PNG needed by this script:)

### Actions required by the user
1. Replace the `CPATH` variable with the full path to your PNG image;
2. Rename the `ICONSET_DIR`;
3. Run the script;
4. Your `.icns` file will be generated in the same directory

### Requirements
- macOS
- `sips` and `iconutil` (both are built-in)