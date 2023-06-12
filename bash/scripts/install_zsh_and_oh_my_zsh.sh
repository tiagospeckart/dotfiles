 #!/bin/bash

# Install zsh
sudo dnf install zsh -y

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change the default shell for the current user to zsh
chsh -s $(which zsh)

# Print a message to remind the user to log out and log back in
echo "Please log out and log back in to complete the change to zsh."
