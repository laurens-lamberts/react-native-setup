
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
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/laurenslamberts/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    # or... export PATH="/opt/homebrew/bin:$PATH" >> ~/.zshrc
fi

echo "Getting Homebrew ready. This can take about 5 minutes..."
echo "Please ignore potential errors about 'shallow clones'."
brew tap homebrew/cask
brew update

echo "Install Node & dependencies"
mkdir ~/.nvm
brew install nvm

brew install node

# Below corepack enable enables yarn
corepack enable

brew install watchman

yarn global add react-devtools

echo "Do you wish to install Visual Studio Code?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) brew install --cask visual-studio-code; break;;
        No ) break;;
    esac
done

echo "Set mac language to English"
sudo languagesetup -langspec 20

echo "Add to zshrc manually;"
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh



# Add below to bottom of ~/.zshrc
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# THEN, do; source ~/.zshrc



# nvm install node

# echo "Node version installed;"
#node --version

echo "Setup general completed!"
