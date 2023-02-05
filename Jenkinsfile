// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'cd src/app && docker build -t flask-app-1 . && docker run -dp 80:5000 flask-app-1'
            }
        }
    }
}
