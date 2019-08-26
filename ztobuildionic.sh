#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="./androidjdk/tools"
 export ANDROID_SDK_ROOT="./androidjdk/tools"
 export PATH=$PATH:./androidgraddle/gradle-4.10.2/bin
 export GRADLE_HOME=./androidgraddle/gradle-4.10.2
 export GRADLE_USER_HOME=./androidgraddle/gradle-4.10.2
 echo "GRADLE VERSION"
 gradle -v

