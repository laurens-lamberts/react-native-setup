sh configure-dock.sh

plutil -replace StandardViewSettings.IconViewSettings.arrangeBy -string grid ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Restart finder
killall Finder