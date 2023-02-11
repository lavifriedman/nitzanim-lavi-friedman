// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
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
                    docker.withRegistry('https://870461622945.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-credentials') {
                    app.push("${10}")
                    app.push("latest")
                    }
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'flask-app-srv',
                    transfers: [ sshTransfer(execCommand: 'bash set-flask-container.sh')])])
                }
            }
        }
    }
}

