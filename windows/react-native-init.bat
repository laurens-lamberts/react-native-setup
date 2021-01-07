
REM React native new project creation WINDOWS
REM Author: Laurens Lamberts

REM How to use;
REM - Determine a workspace folder (e.g. ~/ws/react-native). 
REM - Copy this file to the root of your workspace folder.
REM - In the terminal, go to the workspace folder.
REM - Call 'chmod +x ./react-native-init.sh' to set the rights
REM - Call this script (''./react-native-init.sh'). This creates the app, and opens the code in Visual Studio Code

npx react-native init MyApp --template react-native-template-typescript
cd MyApp
code -n .
cd android
echo "Opening Android Studio"
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe" "./"
