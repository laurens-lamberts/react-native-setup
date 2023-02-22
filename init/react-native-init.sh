# React native - new project creation MAC
# Author: Laurens Lamberts

# How to use;
# - Determine a workspace folder (e.g. ~/ws/react-native). 
# - Copy this file to the root of your workspace folder.
# - Change the name 'MyApp' in this script to the desired project name.
# - In the terminal, go to the workspace folder.
# - Call 'chmod +x ./react-native-init.sh' to set the rights
# - Call this script (''./react-native-init.sh'). This creates the app, and opens the code in Visual Studio Code

npx react-native init MyApp
cd MyApp
code -n .
cd android
echo "Opening Android Studio"
open -a /Applications/Android\ Studio.app ./