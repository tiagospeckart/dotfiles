#!/bin/bash

# Install necessary packages if missing
if ! command -v git &> /dev/null
then
    echo "Git is not installed. Installing..."
    sudo dnf group install "Development Tools"
    sudo dnf install git -y
fi

# Clone dotfiles repository
if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Cloning dotfiles repository..."
    git clone https://github.com/tiagospeckart/dotfiles.git ~/.dotfiles
fi

# Create necessary symlinks
echo "Creating symlinks..."
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.bashrc ~/.bashrc

# Install Zsh and oh-my-zsh
$HOME/.dotfiles/bash/scripts/install_zsh_and_oh_my_zsh.sh

# Install Zsh plugins
echo "Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Reminder to set wallpaper and font manually
echo "Don't forget to manually set your wallpaper and font!"

# Print message to remind the user to log out and log back in
echo "Please log out and log back in to complete the setup."
