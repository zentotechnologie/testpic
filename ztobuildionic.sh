#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="./androidjdk/tools"
 export ANDROID_SDK_ROOT="./androidjdk/tools"
 export PATH=$PATH:./gradle/bin
 export GRADLE_HOME=./gradle/
 export GRADLE_USER_HOME=./gradle

 echo "CLASSPATH ="
 echo $CLASSPATH
 export CLASSPATH=$CLASSPATH:$GRADLE_HOME/lib
  echo "CLASSPATH AFTER="
 echo $CLASSPATH

