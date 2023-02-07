# Install Ruby version manager
\curl -sSL https://get.rvm.io | bash -s stable --ruby
# Install Ruby
rvm install 2.7.5
rvm --default use 2.7.5

# Just to be sure we don't have an old cocoapods version...
sudo gem uninstall cocoapods
# We now install cocoapods via homebrew, to get the ARM64 version
brew install cocoapods

# not sure if this is still necessary...
# sudo arch -x86_64 gem install ffi

sudo xcode-select --switch /Applications/Xcode.app

# For some projects node could not be found by XCode. This fixes that.
sudo ln -s $(which node) /usr/local/bin/node