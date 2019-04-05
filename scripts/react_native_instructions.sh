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
create-react-native-app MyApp

##cd MyApp
##you can start to work here. A new structure was created for you with basic functionality
