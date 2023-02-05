// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'ls' 
                sh 'docker build -t app .'
                }
            }
        }
    }

