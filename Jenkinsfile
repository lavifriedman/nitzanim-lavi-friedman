// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'sudo chown -R $USER src/app'
                dir('src/app') { 
                     sh 'docker build -t flask-app-1 .'
                     }
            }
        }
    }
}
