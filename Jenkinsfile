// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                dir('app/src') { 
                     sh 'docker build -t flask-app-1 .'
                     }
            }
        }
    }
}
