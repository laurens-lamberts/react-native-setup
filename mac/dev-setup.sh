# MAC react-native DEV environment script
# Author: Laurens Lamberts

# How to use;
# - Open terminal to the folder where this file is located 
# - Call 'chmod +x ./dev-setup.sh' to set the rights
# - Call the script WITHOUT SUDO using './dev-setup.sh'

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
brew tap AdoptOpenJDK/openjdk
brew update

echo "Install Node & dependencies"
brew install node
brew install watchman
brew install yarn

echo "Node version installed;"
node --version

echo "Install Java"
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8

echo "Java version installed;"
java -version

echo "Do you wish to install Visual Studio Code?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) brew install --cask visual-studio-code; break;;
        No ) break;;
    esac
done

echo "Do you wish to install Android SDK & Android Studio?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) brew install --cask android-studio; 
              export ANDROID_HOME=$HOME/Library/Android/sdk; 
              export JAVA_HOME=$(/usr/libexec/java_home);
              export PATH=$PATH:$ANDROID_HOME/emulator;
              export PATH=$PATH:$ANDROID_HOME/tools;
              export PATH=$PATH:$ANDROID_HOME/tools/bin;
              export PATH=$PATH:$ANDROID_HOME/platform-tools; 
              break;;
        No ) break;;
    esac
done

echo "Setup completed!"