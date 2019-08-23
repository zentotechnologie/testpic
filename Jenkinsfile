pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                checkout scm
                }
            steps {
                echo "java -version"
                java -version
            }
        }
    }
}
