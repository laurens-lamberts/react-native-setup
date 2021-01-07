# MAC react-native RESET DEV environment script
# !!!WARNING!!! THIS DELETES A LOT OF SOFTWARE FROM YOUR MACHINE
# Author: Laurens Lamberts

# How to use;
# - Open terminal to the folder where this file is located 
# - Call 'chmod +x ./dev-setup-RESET.sh' to set the rights
# - Call the script WITHOUT SUDO using './dev-setup-RESET.sh'

echo "!!!WARNING!!! THIS DELETES A LOT OF SOFTWARE FROM YOUR MACHINE. Do you wish to continue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

echo "Starting react-native dev-environment RESET..."

echo "Removing Homebrew sources"
brew untap homebrew/cask
brew untap AdoptOpenJDK/openjdk

echo "Uninstall Node & dependencies"
brew uninstall watchman
brew uninstall yarn
brew uninstall node

echo "Uninstall Java"
brew uninstall --cask adoptopenjdk/openjdk/adoptopenjdk8

echo "Uninstall Visual Studio Code"
brew uninstall --cask visual-studio-code
sudo rm /usr/local/bin/code

echo "Uninstall Android Studio"
brew uninstall --cask android-studio

echo "Uninstall Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

echo "RESET completed!"