brew install python3
brew install python
brew unlink python && brew link --overwrite python

sudo python3 -m ensurepip --upgrade
sudo pip install --upgrade pip
sudo pip3 install fb-idb

# Install Ruby version manager
\curl -sSL https://get.rvm.io | bash -s stable --ruby
# Install Ruby
rvm install 2.7.6
rvm --default use 2.7.6

# Just to be sure we don't have an old cocoapods version...
sudo gem uninstall cocoapods
# We now install cocoapods via homebrew, to get the ARM64 version
brew install cocoapods
sudo gem install cocoapods

# TODO: we might need to install the latest XCode command line tools before watchman...
# Installing latest watchman required for wml (watchman watch-list for developing libraries as symlinks are not supported by the Metro bundler)
brew install watchman

sudo xcode-select --switch /Applications/Xcode.app

# For some projects node could not be found by XCode. This fixes that.
sudo ln -s $(which node) /usr/local/bin/node


# TODO: XCODE
# 1. Install Xcode from the App Store
# 2. open Xcode, and have the additional components installed
# 3. when this is done, open Xcode, and configure the command line tools as following;
# Make sure to point Xcode to the version of the command line tools we just installed. To do this launch Xcode, open the “Preferences…” item under the Xcode menu, go to the “Locations” section and select the version of command line tools we just installed from the Command Line Tools drop down.

# TODO: manually set IDB binary location to `/opt/homebrew/bin/idb` in Flipper settings

echo "Setup iOS completed!"