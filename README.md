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

## Actions

1. Checks if `Git` is installed and installs it if necessary.
2. Checks if `Zsh` is installed and installs it if necessary.
3. Checks if `chsh` (change shell) is available and installs it if necessary.
4. Changes the default shell to `Zsh`.
5. Clones the dotfiles repository if it doesn't exist.
6. Creates symlinks for various configuration files.
7. Installs `Zsh` and `oh-my-zsh` using a separate installation script.
8. Installs `Zsh` plugins for syntax highlighting and autosuggestions.
9. Sets up the `agnoster` custom theme for `oh-my-zsh`.
10. Prompts the user to install `NerdFonts` (optional - the repository is gigantic).
11. Sets up the `Base16 Eva Dim` color scheme for `GNOME Terminal` (if the environment is GNOME).
12. Sets up the hotkey for the Terminal (if the system is Fedora).
13. Reminds the user to set the wallpaper and font manually.
14. Displays a message to log out and log back in to complete the setup.


Please remember to log out and log back in to complete the setup.

## Manual Steps

Certain parts of the setup process are not automated and need to be done manually:

### Setting the wallpaper

Use the following command and replace /path/to/your/image.jpg with your desired wallpaper image.

```zsh
    gsettings set org.gnome.desktop.background picture-uri file:///path/to/your/image.jpg
```

# Future Improvements

- Learn how to use dconf or gsettings to record and restore system preferences and other Linux configurations.
- Automate symlinking and run script files with a bootstrapping tool like Dotbot.
- Revisit the list in .zshrc or .bashrc to customize the shell.
- Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
- Find inspiration and examples in other Dotfiles repositories at dotfiles.github.io.
