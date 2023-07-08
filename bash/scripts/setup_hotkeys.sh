#!/bin/bash

# Check if the system is Fedora
if grep -q "Fedora" /etc/os-release; then
    # Create a custom shortcut
    gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

    # Set the name, command, and binding for the shortcut
    gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0 name 'Open Terminal'
    gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0 command 'gnome-terminal'
    gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0 binding '<Ctrl><Alt>T'
else
    echo "This script is meant for Fedora. Skipping setting up hotkeys..."
fi
