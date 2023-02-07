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
                 app = docker.build("underwater")
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
                        docker.withRegistry('https://870461622945.dkr.ecr.us-east-1.amazonaws.com/lavi-devops-course', 'ecr:us-east-1:aws-credentials') {
                    app.push("${5}")
                    app.push("latest")
                    }
                }
            }
        }
    }
}

