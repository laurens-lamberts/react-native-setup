
REM React native new project creation WINDOWS
REM Author: Laurens Lamberts

REM How to use;
REM - Determine a workspace folder (e.g. C://ws/react-native). 
REM - Copy this file to the root of your workspace folder.
REM - Change the name 'MyApp' in this script to the desired project name.
REM - In the command line, go to the workspace folder.
REM - Call this script ('./react-native-init.bat'). This creates the app, and opens the code in Visual Studio Code

npx react-native init MyApp --template react-native-template-typescript
cd MyApp
code -n .
cd android
echo "Opening Android Studio"
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe" "./"
