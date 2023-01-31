// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'python:3.10.7-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'cd src/app && pwd'
                sh 'export FLASK_APP=flaskr'
                sh 'export FLASK_ENV=development'
                sh 'pip install --editable .' 
                sh 'flask init-db'
                sh 'flask run --host=0.0.0.0'
            }
        }
    }
}
