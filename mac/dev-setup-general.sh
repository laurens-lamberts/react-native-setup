
echo "Starting react-native dev-environment setup..."
echo "NOTE: You might need to provide input some times during the process"

echo "Verify Homebrew"
# Check for Homebrew, install if we don't have it
if test $(which brew); then
    echo "Homebrew already installed. Skip."
fi
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Getting Homebrew ready. This can take about 5 minutes..."
echo "Please ignore potential errors about 'shallow clones'."
brew tap homebrew/cask
brew update

echo "Install Node & dependencies"
brew install nvm
nvm install node
brew install watchman
brew install yarn

echo "Node version installed;"
node --version

echo "Do you wish to install Visual Studio Code?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) brew install --cask visual-studio-code; break;;
        No ) break;;
    esac
done

echo "Setup general completed!"