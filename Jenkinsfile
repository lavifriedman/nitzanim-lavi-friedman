// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'docker:latest' } }
    stages {
        stage('build') {
            steps {

                sh 'ls' 
                sh 'docker build .'
                    
            }
        }
    }
}
