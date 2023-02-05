// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'ubuntu:latest' } }
    stages {
        stage('build') {
            steps {

                sh 'ls' 
                sh 'docker build .'
                    
            }
        }
    }
}
