// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t flask-app-1 src/app/Dockerfile && docker run -dp 80:5000 flask-app-1'
            }
        }
    }
}
