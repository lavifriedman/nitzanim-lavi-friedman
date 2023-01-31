// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'python:3-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'export FLASK_APP=flaskr'
                sh 'export FLASK_ENV=development'
                sh 'cd src/app && pip install --editable . && flask init-db && flask run --host=0.0.0.0'
            }
        }
    }
}
