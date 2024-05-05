# Ultimate dock setup. These are the best settings.
defaults write com.apple.dock autohide -bool true 
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock static-only -bool true
defaults write com.apple.dock minimize-to-application -BOOL YES
defaults write com.apple.dock "mineffect" -string "scale"
defaults write com.apple.dock "tilesize" -int "100" && killall Dock

plutil -replace StandardViewSettings.IconViewSettings.arrangeBy -string grid ~/Library/Preferences/com.apple.finder.plist

osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Restart the dock and finder
killall Dock
killall Finder