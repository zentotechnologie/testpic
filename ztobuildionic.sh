#!/usr/bin/env bash
 echo "java -version"
 java -version

 echo "npm install"
 npm install

 echo "npm install ionic"
 npm install ionic


echo "npm run ionic info"
npm run ionic info

echo "npm run ionic cordova platform add android@8.0.0"
npm run ionic cordova platform add android@8.0.0 --debug --verbose

echo "npm run ionic cordova requirements --debug --verbose"
npm run ionic cordova requirements --debug --verbose
