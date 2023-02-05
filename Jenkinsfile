// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'cd src/app'
                sh 'docker build -t flask-app-1 .'
                sh 'docker run -dp 80:5000 flask-app-1'
            }
        }
    }
}
