# IDB connector for iOS (react-native Flipper)
brew tap facebook/fb
brew install idb-companion
brew install python3
sudo python -m ensurepip --upgrade
sudo pip install --upgrade pip
sudo pip3 install fb-idb

# TODO: XCODE
# 1. Install Xcode from the App Store
# 2. open Xcode, and have the additional components installed
# 3. when this is done, open Xcode, and configure the command line tools as following;
# Make sure to point Xcode to the version of the command line tools we just installed. To do this launch Xcode, open the “Preferences…” item under the Xcode menu, go to the “Locations” section and select the version of command line tools we just installed from the Command Line Tools drop down.

echo "Setup iOS completed!"