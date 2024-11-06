# Kraken Desktop Linux Integration Helper

A guide and helper scripts for properly integrating the official Kraken Desktop application with Linux systems.

## Overview
This repository provides instructions and utilities for properly setting up the Kraken Desktop application's URL handler (`kraken://`) on Linux systems. This ensures proper integration between your web browser and the Kraken Desktop application.

## Prerequisites
- Linux operating system with XDG-compliant desktop environment
- Downloaded Kraken Desktop for Linux from [Official Kraken Website](https://www.kraken.com/desktop)
- `xdg-utils` package installed

## Quick Install
1. Download and install Kraken Desktop from https://www.kraken.com/desktop
2. Run the following commands:

```bash
# For single user installation
mkdir -p ~/.local/share/applications
cp /path/to/downloaded/kraken.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications
xdg-mime default kraken.desktop x-scheme-handler/kraken

# For system-wide installation
sudo cp /path/to/downloaded/kraken.desktop /usr/share/applications/
sudo update-desktop-database
xdg-mime default kraken.desktop x-scheme-handler/kraken
```

## Installation Verification
After installation, test the URL handler by:
1. Running `xdg-open "kraken://test"` in terminal
2. Clicking any `kraken://` link in your browser

The Kraken Desktop application should launch automatically.

## Troubleshooting

### Common Issues

#### URL Handler Not Working
If clicking `kraken://` links doesn't launch Kraken Desktop:
1. Verify the .desktop file is in the correct location
2. Run `update-desktop-database` again
3. Check if `xdg-mime query default x-scheme-handler/kraken` returns "kraken.desktop"

#### Permission Issues
If you see permission errors:
```bash
# Fix permissions for single user installation
chmod 644 ~/.local/share/applications/kraken.desktop

# Fix permissions for system-wide installation
sudo chmod 644 /usr/share/applications/kraken.desktop
```

## Uninstallation
To remove the URL handler registration:

```bash
# For single user installation
rm ~/.local/share/applications/kraken.desktop
update-desktop-database ~/.local/share/applications

# For system-wide installation
sudo rm /usr/share/applications/kraken.desktop
sudo update-desktop-database
```

Note: This only removes the URL handler registration. To completely uninstall Kraken Desktop, follow the uninstallation instructions provided with the application.

## Contributing
Found a bug or have a suggestion? Please:
1. Check existing issues first
2. Open a new issue with detailed description
3. For fixes/improvements, feel free to submit a Pull Request

## Disclaimer
This is a community-maintained helper repository and is not officially affiliated with Kraken. For official downloads and support, please visit [Kraken's official website](https://www.kraken.com/desktop).

## License
This documentation and helper scripts are licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## References
- [Official Kraken Desktop Download Page](https://www.kraken.com/desktop)
- [XDG Desktop Entry Specification](https://specifications.freedesktop.org/desktop-entry-spec/latest/)
