pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Clean project"

                echo 'Building..'
                checkout scm
                 echo "java -version"
                 sh './ztobuildionic.sh'

                }
        }
    }
}
