# Check if git is installed

# Clone the nerd-fonts repository
if git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git; then
    echo "Successfully cloned nerd-fonts repository."
    # Go to the nerd-fonts directory
    cd nerd-fonts
    # Prompt the user for the desired font, defaulting to Mononoki
    echo "Please enter the name of the desired Nerd Font (default: Mononoki): "
    read font
    if [ -z "$font" ]; then
        font="Mononoki"
    fi
    # Install the desired font using the provided install.sh script
    if ./install.sh "$font"; then
        echo "Successfully installed the $font font."
        # Set the monospace font to the desired Nerd Font
        gsettings set org.gnome.desktop.interface monospace-font-name "${font} Nerd Font Regular 11"
    else
        echo "Error: Failed to install the $font font."
        exit 1
    fi
    # Go back to the original directory
    cd ..
    # Ask user whether to remove the nerd-fonts repository
    echo "Do you want to remove the Nerd Fonts repository to free up space? (Y/n)"
    read remove_repo
    if [ -z "$remove_repo" ] || [[ "$remove_repo" =~ ^[Yy]$ ]]; then
        # Remove the nerd-fonts repository
        rm -rf nerd-fonts
        echo "Cleaned up the nerd-fonts repository."
    elif [[ "$remove_repo" =~ ^[Nn]$ ]]; then
        echo "Skipped removal of the nerd-fonts repository."
    else
        echo "Invalid input. Keeping the nerd-fonts repository."
    fi
else
    echo "Error: Failed to clone nerd-fonts repository. Please check your internet connection or the repository URL."
    exit 1
fi
