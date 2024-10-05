#!/bin/sh

defaults delete com.apple.dock && killall Dock

set -e

__dock_item() {
    printf '%s%s%s%s%s' \
           '<dict><key>tile-data</key><dict><key>file-data</key><dict>' \
           '<key>_CFURLString</key><string>' \
           "$1" \
           '</string><key>_CFURLStringType</key><integer>0</integer>' \
           '</dict></dict></dict>'
}

printf '%s' 'Setting up Dock icons...'
defaults write com.apple.dock \
               persistent-apps -array "$(__dock_item /Applications/Safari.app)" \
                                      "$(__dock_item /System/Applications/Utilities/Terminal.app)"
killall Dock
printf '%s\n' ' done.'