brew install android-platform-tools

echo "Do you wish to install Android SDK & Android Studio?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) brew install --cask android-studio; 
              export ANDROID_HOME=$HOME/Library/Android/sdk; 
              export JAVA_HOME=$(/usr/libexec/java_home);
              export PATH=$PATH:$ANDROID_HOME/emulator;
              export PATH=$PATH:$ANDROID_HOME/tools;
              export PATH=$PATH:$ANDROID_HOME/tools/bin;
              export PATH=$PATH:$ANDROID_HOME/platform-tools; 
              break;;
        No ) break;;
    esac
done

brew install openjdk@11
sudo ln -sfn $(brew --prefix)/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

echo "Setup Android completed!"