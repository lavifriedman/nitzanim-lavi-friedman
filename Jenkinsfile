// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'ls' 
                sh 'docker build -t app-1 .'
                sh 'docker run -dp 80:5000 app-1'
                }
            }
        }
    }

