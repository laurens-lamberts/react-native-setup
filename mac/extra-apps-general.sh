# Install apps
brew install --cask slack
brew install --cask spotify
# brew install --cask google-chrome
brew install --cask microsoft-teams
# brew install --cask microsoft-office
brew install --cask spectacle
# brew install --cask whatsapp

# Add spectacle to login startup items
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Spectacle.app", hidden:false}'