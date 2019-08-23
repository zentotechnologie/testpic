#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="./androidjdk/tools"
 $ANDROID_HOME/bin/sdkmanager "platform-tools" "platforms;android-28" --licenses

 #echo "npm install"
 #npm install

 #echo "npm install ionic"
 #npm install ionic

  #echo "npm install cordova"
 #npm install cordova


#echo "npm run ionic info"
#npm run ionic info

#echo "npm run ionic cordova platform add android@8.0.0"
#npm run ionic cordova platform add android@8.0.0 --debug --verbose

#echo "npm run ionic cordova requirements --debug --verbose"
#npm run ionic cordova requirements --debug --verbose
