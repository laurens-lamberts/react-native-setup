# Just to be sure we don't have an old cocoapods version...
sudo gem uninstall cocoapods
# We now install cocoapods via homebrew, to get the ARM64 version
brew install cocoapods

# not sure if this is still necessary...
# sudo arch -x86_64 gem install ffi


sudo xcode-select --switch /Applications/Xcode.app