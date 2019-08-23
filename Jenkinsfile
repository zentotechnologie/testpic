pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                checkout scm
                    stage('Setup & Build Ionic') {
                                        sh '''#!/bin/bash

                                            echo "java -version"
                                            java -version
                    }
            }
        }
    }
}
