# Install apps
brew install --cask imageoptim
brew install --cask hyper
brew install --cask flipper
brew install --cask postman
brew install --cask notion
brew install --cask slack
brew install --cask spotify
brew install --cask gitkraken
brew install --cask google-chrome
brew install --cask discord
brew install --cask microsoft-teams
brew install --cask microsoft-office
brew install --cask microsoft-excel
brew install --cask microsoft-word
brew install --cask spectacle
brew install --cask whatsapp
brew install --cask zoom
brew install --cask zeplin
brew install --cask eagle

# Install drivers
brew tap homebrew/cask-drivers
brew install focusrite-control

# Add the apps to the dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Hyper.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Flipper.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Postman.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Slack.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Spotify.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Gitkraken.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/GoogleChrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Discord.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Microsoft Teams.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
# defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Microsoft Office.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Microsoft Excel.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Microsoft Word.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/WhatsApp.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

defaults write com.apple.dock autohide -bool true 
defaults write com.apple.dock autohide-delay -float 0

plutil -replace StandardViewSettings.IconViewSettings.arrangeBy -string grid ~/Library/Preferences/com.apple.finder.plist

# Restart the dock and finder
killall Dock
killall Finder