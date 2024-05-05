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