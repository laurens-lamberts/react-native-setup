# Install apps
# Work apps
# brew install --cask visual-studio-code
# brew install --cask miro
brew install --cask figma
# brew install --cask slack
brew install --cask gitkraken
brew install --cask postman
# brew install --cask altair-graphql-client
brew install --cask imageoptim
# brew install --cask flipper

# Other apps
# brew install --cask spotify
brew install --cask discord
brew install --cask eagle
brew install --cask google-drive
brew install --cask steam
brew install --cask disk-drill
brew install --cask carbon-copy-cloner
brew install --cask musicbrainz-picard
# brew install --cask native-access

# Scrcpy is a tool to show an attached Android device display on the mac screen
# This is handy for screen sharing purposes, but also to remote-control the device.
brew install scrcpy

# Install drivers
brew tap homebrew/cask-drivers
brew install focusrite-control

# DSP tools
# brew install putty
# brew install gcc

# Add the apps to the dock
function add_apps_to_dock() {
  local apps=("$@")
  for app in "${apps[@]}"; do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$app.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
  done
  killall Dock
}
add_apps_to_dock "GitKraken" "Disk Drill" "Carbon Copy Cloner"

# Restart the dock and finder
killall Dock

# Clone Github repo's
# git clone https://github.com/laurens-lamberts/react-native-setup.git /Users/laurenslamberts/ws/react-native/react-native-setup
git clone --recursive https://github.com/electro-smith/DaisyExamples /Users/laurenslamberts/ws/daisy
git clone https://github.com/laurens-lamberts/surroundings.git /Users/laurenslamberts/ws/react-native/surroundings
