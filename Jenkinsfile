// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'sudo docker build -t flask-app-1 src/app && sudo docker run -dp 80:5000 flask-app-1'
            }
        }
    }
}
