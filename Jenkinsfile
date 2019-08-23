
            try {
                stage('Init') {
		    # from starter template
                    deleteDir()
                }
                stage('Checkout') {
		    # from starter template
                    checkout scm
                }

                stage('Setup & Build Ionic') {
                    sh '''#!/bin/bash

                        echo "java -version"
                        java -version

			# Override Gradle PATH
                        echo "npm install ionic@3.20.0 cordova@8.0.0"
                        npm install ionic@3.20.0 cordova@8.0.0

                        echo "npm run ionic cordova platform remove android"
                        npm run ionic cordova platform remove android

                        echo "env"
                        env

                        echo "npm install"
                        npm install

                        echo "npm run ionic info"
                        npm run ionic info

                        echo "npm run ionic cordova platform add android@8.0.0"
                        npm run ionic cordova platform add android@8.0.0 --debug --verbose

                        echo "npm run ionic cordova requirements --debug --verbose"
                        npm run ionic cordova requirements --debug --verbose

                        OLD="apply plugin: \'com.android.application\'"
                        NEW="apply plugin: \'com.android.application\' \
                        if (file(\"\$System.env.HOME/sign.gradle\").exists()) { \
                            apply from: \"\$System.env.HOME/sign.gradle\" \
                        }"
                        echo "cat platforms/android/app/build.gradle | sed \"s#$OLD#$NEW#g\" > tmp"
                        cat platforms/android/app/build.gradle | sed "s#$OLD#$NEW#g" > tmp
                        echo "mv tmp platforms/android/app/build.gradle"
                        mv tmp platforms/android/app/build.gradle

                        echo "npm run ionic cordova build android --prod --debug --verbose"
                        npm run ionic cordova build android --prod --debug --verbose

                    '''
                }
            } catch(Exception e) {
                mail to: "techdev@zento.fr", subject: "Build #${env.BUILD_NUMBER} of Job ${env.JOB_NAME} failed", body: "See ${env.RUN_DISPLAY_URL}"
                throw e
            } finally {
                stage('Archive') {
                    archiveArtifacts artifacts: '**/*.apk', fingerprint: true
                }
                stage('Clean') {
                    deleteDir()
                }
            }



