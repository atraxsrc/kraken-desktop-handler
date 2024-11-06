# Installation Instructions

## Prerequisites
1. Ensure you have `xdg-utils` installed:
```bash
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install xdg-utils

# Fedora
sudo dnf install xdg-utils

# Arch Linux
sudo pacman -S xdg-utils
```

## Single User Installation

1. Download the files:
```bash
curl -O https://raw.githubusercontent.com/yourusername/kraken-desktop-handler/main/kraken_desktop
curl -O https://raw.githubusercontent.com/yourusername/kraken-desktop-handler/main/kraken.desktop
```

2. Create required directories:
```bash
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/applications
```

3. Install the handler script:
```bash
cp kraken_desktop ~/.local/bin/
chmod +x ~/.local/bin/kraken_desktop
```

4. Install the desktop entry:
```bash
cp kraken.desktop ~/.local/share/applications/
```

5. Update the desktop database:
```bash
update-desktop-database ~/.local/share/applications
```

6. Set as default handler:
```bash
xdg-mime default kraken.desktop x-scheme-handler/kraken
```

## System-wide Installation

1. Download the files (as above)

2. Install the handler script:
```bash
sudo cp kraken_desktop /usr/local/bin/
sudo chmod +x /usr/local/bin/kraken_desktop
```

3. Install the desktop entry:
```bash
sudo cp kraken.desktop /usr/share/applications/
```

4. Update the desktop database:
```bash
sudo update-desktop-database
```

5. Set as default handler:
```bash
xdg-mime default kraken.desktop x-scheme-handler/kraken
```

## Verification
Test the installation by clicking a `kraken://` link in your browser or running:
```bash
xdg-open "kraken://test"
```

## Uninstallation

### Single User
```bash
rm ~/.local/bin/kraken_desktop
rm ~/.local/share/applications/kraken.desktop
update-desktop-database ~/.local/share/applications
```

### System-wide
```bash
sudo rm /usr/local/bin/kraken_desktop
sudo rm /usr/share/applications/kraken.desktop
sudo update-desktop-database
```
