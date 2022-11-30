pipeline {
    agent { 
        kubernetes { 
            label 'jenkins/jenkins-agent' 
        } 
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                dir("www/app") {
                    sh "pwd"
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh "pwd"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh "pwd"
            }
        }
    }
}
