
ECHO Downloading Chocolatey (sofware installation automation)...
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

ECHO Installing necessary dev modules
choco install nvm
choco install nodejs
choco install watchman
choco install yarn
choco install jdk11

nvm install 15.4.0
nvm use 15.4.0

ECHO Installing Android Studio...
choco install androidstudio

ECHO Installing Visual Studio Code...
choco install vscode