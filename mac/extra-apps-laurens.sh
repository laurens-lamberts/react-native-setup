# Install apps
brew install --cask imageoptim
brew install --cask hyper
brew install --cask flipper
brew install --cask postman
brew install --cask slack
brew install --cask spotify
brew install --cask gitkraken
brew install --cask discord
brew install --cask zoom
brew install --cask zeplin
brew install --cask eagle
brew install --cask google-drive
# brew install --cask altair-graphql-client
brew install --cask github

# Scrcpy is a tool to show an attached Android device display on the mac screen
# This is handy for screen sharing purposes, but also to remote-control the device.
brew install scrcpy

# Install drivers
brew tap homebrew/cask-drivers
brew install focusrite-control

# DSP tools
brew install putty
brew install gcc

# Add the apps to the dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Hyper.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Flipper.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Postman.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Gitkraken.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Discord.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Microsoft Teams.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
# defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Microsoft Office.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

# Restart the dock and finder
killall Dock

# Manually increase fontSize here
code ~/.hyper.js

# Clone Github repo's
git clone --recursive https://github.com/electro-smith/DaisyExamples /Users/laurenslamberts/ws/daisy
git clone https://github.com/laurens-lamberts/surroundings.git /Users/laurenslamberts/ws/react-native/surroundings