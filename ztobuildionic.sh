#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="/var/lib/jenkins/workspace/androidjdk/tools"
 export ANDROID_SDK_ROOT="/var/lib/jenkins/workspace/androidjdk/tools"
wget "https://services.gradle.org/distributions/gradle-4.10.2-bin.zip"
unzip gradle-4.10.2-bin.zip

 export PATH=$PATH:gradle-4.10.2/bin
 echo $PATH
 export GRADLE_HOME=gradle-4.10.2
 export GRADLE_USER_HOME=gradle-4.10.2
 echo "GRADLE VERSION"
 gradle -v

$ANDROID_HOME/bin/sdkmanager --install  "build-tools;26.0.1"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

$ANDROID_HOME/bin/sdkmanager --install   "platforms;android-28"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

 $ANDROID_HOME/bin/sdkmanager --install   "platforms;android-26"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

  $ANDROID_HOME/bin/sdkmanager --install   "platforms;android-27"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

export PATH=$PATH:$ANDROID_HOME:/var/lib/jenkins/workspace/androidjdk/platforms
echo $PATH

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

