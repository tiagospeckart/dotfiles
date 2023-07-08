#!/bin/bash

# Install necessary packages if missing
if ! command -v git &> /dev/null
then
    echo "Git is not installed. Installing..."
    sudo dnf group install "Development Tools" -y
    sudo dnf install git -y
fi

# Check if zsh is installed
if ! command -v zsh &> /dev/null
then
    echo "Zsh is not installed. Installing..."
    sudo dnf install zsh -y
fi

# Check if chsh is available
if ! command -v chsh &> /dev/null
then
    echo "'chsh' is not found. Installing 'util-linux-user'..."
    sudo dnf install util-linux-user -y
fi

# Check if chsh is available again after attempting to install util-linux-user
if command -v chsh &> /dev/null
then
    # Change default shell to zsh
    echo "Changing default shell to zsh..."
    chsh -s $(which zsh)
else
    echo "Unable to find 'chsh' even after installing 'util-linux-user'. Please install it manually."
    exit 1
fi

# Clone dotfiles repository
if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Cloning dotfiles repository..."
    git clone https://github.com/tiagospeckart/dotfiles.git ~/.dotfiles
else
    echo "Dotfiles repository already exists. Skipping cloning..."
fi

# Create necessary symlinks
echo "Creating symlinks..."
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.antigen.zsh ~/.antigen.zsh

# Install Zsh and oh-my-zsh
if [ -f "$HOME/.dotfiles/bash/scripts/install_zsh_and_oh_my_zsh.sh" ]; then
    $HOME/.dotfiles/bash/scripts/install_zsh_and_oh_my_zsh.sh
else
    echo "Zsh and Oh My Zsh installation script not found. Please check the path and try again."
    exit 1
fi

# Install Zsh plugins
echo "Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Reminder to set wallpaper and font manually
echo "Don't forget to manually set your wallpaper and font!"

# Print message to remind the user to log out and log back in
echo "Please log out and log back in to complete the setup."
