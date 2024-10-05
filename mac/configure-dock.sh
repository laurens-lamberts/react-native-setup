#!/bin/bash

echo "Starting Dock configuration..."

# Clear existing Dock items
echo "Clearing existing Dock items..."
# defaults delete com.apple.dock
defaults delete com.apple.dock persistent-apps 

# Ultimate dock setup. These are the best settings.
echo "Setting Dock preferences..."
defaults write com.apple.dock autohide -bool true 
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock "show-recents" -bool false
# defaults write com.apple.dock static-only -bool true
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock "mineffect" -string "scale"
defaults write com.apple.dock "tilesize" -int 100

function add_apps_to_dock() {
  local apps=("$@")
  for app in "${apps[@]}"; do
    echo "Adding $app to Dock..."
    case "$app" in
      "Voice Memos")
        defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/VoiceMemos.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
        ;;
      "Terminal")
        defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Utilities/Terminal.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
        ;;
      "Mail"|"Notes"|"Photos"|"Music")
        defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/$app.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
        ;;
      *)
        defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$app.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
        ;;
    esac
  done
}

# Add applications to Dock
add_apps_to_dock "Google Chrome" "Visual Studio Code" "GitKraken" "Xcode" "Slack" "Microsoft Teams" "Terminal" "Mail" "Notes" "Voice Memos" "Photos" "Music" "Spotify" "Disk Drill" "Carbon Copy Cloner"

# Restart Dock to apply changes
echo "Restarting Dock..."
killall Dock

echo "Dock configuration completed."
# Restart Dock to apply changes
echo "Restart of Dock..."
killall Dock

echo "Dock configuration completed."