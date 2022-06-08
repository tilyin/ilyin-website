pipeline {
    agent { docker { image 'busybox' } }
    stages {
        stage('build') {
            steps {
                sh 'uname -a'
            }
        }
    }
}