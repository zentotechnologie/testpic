#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="./androidjdk/tools"
 export ANDROID_SDK_ROOT="./androidjdk/tools"
#wget "https://services.gradle.org/distributions/gradle-4.10.2-bin.zip"
#unzip gradle-4.10.2-bin.zip

# export PATH=$PATH:gradle-4.10.2/bin
# echo $PATH
# export GRADLE_HOME=gradle-4.10.2
# export GRADLE_USER_HOME=gradle-4.10.2
# echo "GRADLE VERSION"
# gradle -v

$ANDROID_HOME/bin/sdkmanager --install  "build-tools;26.0.1"
 yes | $ANDROID_HOME/bin/sdkmanager --licenses

export PATH=$PATH:$ANDROID_HOME:./androidjdk/platforms
echo $PATH
