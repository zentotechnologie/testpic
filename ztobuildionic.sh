#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="./androidjdk/tools"
 export ANDROID_SDK_ROOT="./androidjdk/tools"
 export PATH=$PATH:./gradle/bin
 export GRADLE_HOME=./gradle
 export GRADLE_USER_HOME=./gradle

 echo "CLASSPATH ="
 echo $CLASSPATH
 export CLASSPATH=$CLASSPATH:$GRADLE_HOME/lib
  echo "CLASSPATH AFTER="
 echo $CLASSPATH

 $ANDROID_HOME/bin/sdkmanager --install   "platforms;android-28"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

 $ANDROID_HOME/bin/sdkmanager --install   "platforms;android-26"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

  $ANDROID_HOME/bin/sdkmanager --install   "platforms;android-27"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

export PATH=$PATH:$ANDROID_HOME

 echo "npm install"
 npm install

  echo "npm install cordova"
 npm install cordova

 echo "npm install ionic"
 npm install ionic

 echo "INSTALL CORDOVA RES"
 npm i cordova-res




echo "npm run ionic info"
npm run ionic info

echo "npm run ionic cordova platform add android@8.0.0"
npm run ionic cordova platform add android@8.0.0 --debug --verbose

echo "GENERATE RESSOURCES"

npm run ionic cordova --force resources

echo "npm run ionic cordova requirements --debug --verbose"
npm run ionic cordova requirements --debug --verbose

 echo "npm run ionic cordova build android --prod --debug --verbose"
 npm run ionic cordova build android --prod --debug --verbose


