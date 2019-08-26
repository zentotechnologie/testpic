#!/usr/bin/env bash
 echo "java -version"
 java -version
 echo "Setup ANDROID_HOME"
 export ANDROID_HOME="/var/lib/jenkins/workspace/readjenkinsfile/androidjdk/"
 export ANDROID_SDK_ROOT="/var/lib/jenkins/workspace/readjenkinsfile/androidjdk/"
$ANDROID_HOME/tools/bin/sdkmanager  tools --verbose

