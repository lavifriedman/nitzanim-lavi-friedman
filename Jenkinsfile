// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'cd src/app && docker build -t flask-app:1.0'
                sh 'docker run flask-app:1.0'
            }
        }
    }
}
