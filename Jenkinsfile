// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'python-flask-app:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'flask run --host=0.0.0.0'
            }
        }
    }
}
