// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
         stage('Clone repository') { 
            steps { 
                script{
                checkout scm
                }
            }
        }

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("my-flask-app")
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
        stage('Deploy') {
            steps {
                script{
                        docker.withRegistry('870461622945.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-ecr') {
                    app.push("${5}")
                    app.push("latest")
                    }
                }
            }
        }
    }
}

