// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'python-app:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'curl http://localhost:5000'
            }
        }
    }
}
