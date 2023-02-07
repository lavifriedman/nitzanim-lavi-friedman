// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
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
                        docker.withRegistry('870461622945.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-credenitals') {
                    app.push("${5}")
                    app.push("latest")
                    }
                }
            }
        }
    }


