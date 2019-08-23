pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                checkout scm
                 echo "java -version"
                 sh 'ztobuildionic.sh'
                }
        }
    }
}
