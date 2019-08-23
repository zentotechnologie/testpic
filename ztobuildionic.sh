#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="./androidjdk/tools"
 export ANDROID_SDK_ROOT="./androidjdk/tools"
 export GRADLE_HOME="./gradle"
 export GRADLE_USER_HOME="./gradle"
 export GRADLE_HOME_PATH="./gradle/bin"


 export PATH=$PATH:$GRADLE_HOME_PATH
 echo $PATH

 echo "GRADLE VERSION"
gradle -v

