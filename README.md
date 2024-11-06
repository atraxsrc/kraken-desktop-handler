# Kraken Desktop URL Handler

A Linux desktop integration tool for handling `kraken://` URLs in the Kraken cryptocurrency trading platform.

## Overview
This tool enables seamless integration between web browsers and the Kraken Desktop application by properly handling `kraken://` protocol URLs on Linux systems.

## Quick Install
```bash
# For single user installation
mkdir -p ~/.local/bin ~/.local/share/applications
cp kraken_desktop ~/.local/bin/
chmod +x ~/.local/bin/kraken_desktop
cp kraken.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications
xdg-mime default kraken.desktop x-scheme-handler/kraken

# For system-wide installation
sudo cp kraken_desktop /usr/local/bin/
sudo chmod +x /usr/local/bin/kraken_desktop
sudo cp kraken.desktop /usr/share/applications/
sudo update-desktop-database
xdg-mime default kraken.desktop x-scheme-handler/kraken
```

## Requirements
- Linux operating system with XDG-compliant desktop environment
- `xdg-utils` package installed

## Files
- `kraken_desktop`: The URL handler script
- `kraken.desktop`: The desktop entry file for protocol registration

## Manual Installation
See detailed instructions in [INSTALL.md](INSTALL.md)

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
