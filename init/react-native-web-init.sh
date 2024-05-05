# React native web - new project creation MAC
# Author: Laurens Lamberts

# How to use;
# - Determine a workspace folder (e.g. ~/ws/react-native). 
# - Copy this file - and the config folder next to it - to the root of your workspace folder.
# - Change the name 'MyApp' in this script to the desired project name.
# - Using the terminal, go to the workspace folder.
# - Optional: Call 'chmod +x ./react-native-web-init.sh' to set the necessary permissions
# - Call this script (''./react-native-web-init.sh'). This creates the app, and opens the code in Visual Studio Code

function pkg-script () {
  echo $(jq --arg key "${1}" --arg val "${2}" '.scripts[$key]=$val' package.json) | jq . | > package.json
}

WORKSPACE_DIR = "~/ws/react-native"
APP_NAME = "my-app"

# Create a folder for the new project
mkdir $WORKSPACE_DIR/$APP_NAME
# Copy the configs over to the new project
cp -r ./configs $WORKSPACE_DIR/$APP_NAME/configs
# Go to the workspace folder
cd $WORKSPACE_DIR
# Init the new project
yarn create react-app $APP_NAME --template typescript
# Go to the app folder
cd $APP_NAME

# Initialize git repo
git init -b main
git add . && git commit -m "initial commit - create-react-app based on typescript template"

# Add the necessary dependencies
yarn add react-native-web
# Add the necessary dev-dependencies
yarn add -D babel-loader babel-plugin-transform-remove-console url-loader babel-plugin-react-native-web cross-env
yarn add -D webpack webpack-cli webpack-dev-server html-webpack-plugin

git add . && git commit -m "added dependencies to use react-native web"

# Add code-quality dev-dependencies
yarn add -D eslint eslint-config-prettier eslint-plugin-prettier eslint-plugin-unused-imports prettier
yarn add -D @typescript-eslint/parser @typescript-eslint/eslint-plugin
# Add types dependencies
# ...

git add . && git commit -m "added codequality dependencies"

# Move the configs into the new project root
#cp ./configs/webpack.config.js ./webpack.config.js
cp ./configs/babel.config.js ./babel.config.js
cp ./configs/.prettierrc.js ./.prettierrc.js
cp ./configs/.eslintrc.js ./.eslintrc.js
rm -rf ./configs

git add . && git commit -m "added project root config files"


# TODO: provide option to create a new Github repo through this script
# gh repo create

# TODO: Add scripts to the package.json
# echo $(jq '.scripts.web="jest"' package.json) | jq . | > package.json

# Optionally add opinionated dependencies
echo "Would you like react-navigation (a package you can use to navigate between screens in your app + introduce (e.g.) a header)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add @react-navigation/native @react-navigation/native-stack @react-navigation/stack @react-navigation/bottom-tabs @react-navigation/drawer @react-navigation/material-top-tabs
              break;;
        No ) break;;
    esac
done
echo "Would you like react-native-vector-icons (a package you can use to render (font)icons in your app)? This includes react-native-svg (a package you can use to render SVGs in your app)."
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add react-native-vector-icons react-native-svg
              yarn add -D @types/react-native-vector-icons
              break;;
        No ) break;;
    esac
done
echo "Would you like react-native-gesture-handler (a package you can use to handle gestures in your (web)-app)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add react-native-gesture-handler
              break;;
        No ) break;;
    esac
done
echo "Would you like react-native-reanimated (a package you can use to create animations in your app)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add react-native-reanimated
              break;;
        No ) break;;
    esac
done
echo "Would you like ⚡ FlashList (a package you can use instead of FlatList to improve list performance)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add @shopify/flash-list
              break;;
        No ) break;;
    esac
done
echo "Would you like react-query (a package you can use to manage data fetching in your app)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add @tanstack/react-query
              break;;
        No ) break;;
    esac
done
echo "Would you like graphql (a package you can use to fetch data from a GraphQL API)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add graphql
              break;;
        No ) break;;
    esac
done
echo "Would you like axios (a package you can use to fetch data from a REST API)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yarn add axios
              break;;
        No ) break;;
    esac
done

git add . && git commit -m "added opinionated dependencies"

# Start the web-app
yarn start

# Open VS Code to start coding.
code -n .