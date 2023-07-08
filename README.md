# dotfiles

These are my dotfiles that I use to set up my environment on a new Fedora install.

## Installation

To set up a new Fedora environment with these dotfiles, follow these steps:

1. Perform a fresh install of Fedora.
2. Open Terminal.
3. Run the following commands:

```bash
# Download the setup script
curl -o setup.sh https://raw.githubusercontent.com/tiagospeckart/dotfiles/main/bash/scripts/setup.sh

# Make the script executable
chmod +x setup.sh

# Run the setup script
./setup.sh
```

This will automatically:

- Install necessary packages (Git).
- Clone the dotfiles repository.
- Create necessary symlinks for .zshrc, .gitconfig, and .bashrc.
- Install Zsh and oh-my-zsh.
- Install Zsh plugins (syntax highlighting and autosuggestions).

Please remember to log out and log back in to complete the setup.

## Manual Steps

Certain parts of the setup process are not automated and need to be done manually:

### Setting the wallpaper

Use the following command and replace /path/to/your/image.jpg with your desired wallpaper image.

```zsh
    gsettings set org.gnome.desktop.background picture-uri file:///path/to/your/image.jpg
```

### Setting the font

Install your desired font manually.

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki

# Future Improvements

- Learn how to use dconf or gsettings to record and restore system preferences and other Linux configurations.
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like Dotbot.
- Revisit the list in .zshrc or .bashrc to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
- Find inspiration and examples in other Dotfiles repositories at dotfiles.github.io.
