#!/bin/bash

# Check if script is run with sudo when installing system-wide
if [[ $1 == "--system" && $EUID -ne 0 ]]; then
    echo "System-wide installation requires root privileges"
    echo "Please run: sudo $0 --system"
    exit 1
fi

# Determine installation type and set paths
if [[ $1 == "--system" ]]; then
    INSTALL_PATH="/usr/local/bin"
    DESKTOP_FILE_PATH="/usr/share/applications"
else
    INSTALL_PATH="$HOME/.local/bin"
    DESKTOP_FILE_PATH="$HOME/.local/share/applications"
fi

# Create directories if they don't exist
mkdir -p "$INSTALL_PATH"
mkdir -p "$DESKTOP_FILE_PATH"

# Copy kraken_desktop to PATH
echo "Copying kraken_desktop to $INSTALL_PATH"
cp kraken_desktop "$INSTALL_PATH/"
chmod +x "$INSTALL_PATH/kraken_desktop"

# Create desktop file
echo "Creating desktop entry in $DESKTOP_FILE_PATH"
cat > "$DESKTOP_FILE_PATH/kraken.desktop" << EOL
[Desktop Entry]
Name=Kraken Desktop
Exec=$INSTALL_PATH/kraken_desktop %u
Type=Application
Terminal=false
Categories=Finance;
MimeType=x-scheme-handler/kraken;
EOL

# Update desktop database
echo "Updating desktop database"
update-desktop-database "$DESKTOP_FILE_PATH"

# Set as default handler for kraken:// URLs
xdg-mime default kraken.desktop x-scheme-handler/kraken

echo "Installation complete! You can now run kraken_desktop"
