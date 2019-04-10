##Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

##Update brew 
brew update

##Install Node
brew install node

##download Watchman
brew install watchman

##(optional) to install the latest watchman version at github
brew install --HEAD watchman

##instal Expo
npm install -g exp

##install react-native-app
npm install -g create-react-native-app

##move to a work directory
cd directory-to-workspace/

##create a react native app with name MyApp
##The command above might fail since it requires Expo CLI installed the first time
##Even so, the command will ask you to install it  
##Also will ask you to name your app in a JSON file, this name will be seeing as the app's name
##Also will ask you to install yarn dependencies if the process finds you have yarn installed
create-react-native-app MyApp


##cd MyApp
##you can start to work here. A new structure was created for you with basic functionality


## to start your service. Pick one
##yarn start
##nom start

##to install yarn
brew install yarn


##Best practive tip. Once in the app directory it is a good practice to create teh following directories
##To keep all the code separated anbd well organised. In a new tab go to the app's directory
mkdir components
mkdir config
mkdir navigation
mkdir redux
mkdir screens


##Also, remember that every file must have an export for each module or class, 
##Only on e export dafault is allowed and all the imports MUST finish with semicolon
##The styles variables should be exported as module.exports = styles (where styles is the name of the styles var)
##Remember to always save all the files since it won't be loaded properly in the emulator until you save it

##install react-navigation
npm install react-navigation --save

##install redux
npm install --save redux redux-thunk react-redux

##Install firebase. Usage import * as firebase from 'firebase';
npm install --save firebase

##Install AWS3 library to upload images in there. Usage:
##import {ImagePicker } from  'expo';
##import { RNS3 } from 'react-native-aws3';
npm install --save react-native-aws3

##Install react native swipe cards that looks like Tinder app
npm install --save react-native-swipe-cards


