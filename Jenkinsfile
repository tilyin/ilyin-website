pipeline {
    agent { docker { image 'node:16.13.1-alpine' } }
    stages {
        stage('second-build') {
            steps {
                sh 'node --version'
            }
        }
    }
}
