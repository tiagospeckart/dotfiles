# dotfiles

Currently learning how to make a proper backup of my environment.

## Fedora bootstrapping

*If* git and other packages are missing
```bash
sudo dnf group install "Development Tools"
sudo dnf install git
```

### Cloning the repo

#### Use SSH (if set up)...

```bash
git clone git@github.com:tiagospeckart/dotfiles.git ~/.dotfiles

```

#### ...or use HTTPS and switch remotes later.

```bash
git clone https://github.com/tiagospeckart/dotfiles.git ~/.dotfiles
```

### Creating symlinks

```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

### Install software

```bash
#TODO
```

Fedora uses the GNOME desktop environment by default, which stores its settings in the dconf system. You can use the gsettings or dconf command-line tools to manipulate these settings. For example:

### Set the wallpaper

```bash
# Set the wallpaper
gsettings set org.gnome.desktop.background picture-uri file:///path/to/your/image.jpg #TODO
```

# TODO List

- Learn how to use `dconf` or `gsettings` to record and restore system preferences and other Linux configurations.
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like Dotbot.
- Revisit the list in .zshrc or .bashrc to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Create a bootable USB installer for Linux.
- Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
- Find inspiration and examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io).
- And last, but not least, continue to learn and improve your Linux system administration skills.
