pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Clean project"
                deleteDir()
                echo 'Building..'
                checkout scm
                 echo "java -version"
                 sh './ztobuildionic.sh'

                }
        }
    }
}
