// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                dir('src/app') { 
                     sh 'docker build .'
                     }
            }
        }
    }
}
