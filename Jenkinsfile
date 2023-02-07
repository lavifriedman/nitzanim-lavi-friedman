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
                    app.push("${7}")
                    app.push("latest")
                    }
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'ec2-35-174-200-240.compute-1.amazonaws.com',
                    transfers: [ sshTransfer(execCommand: 'bash set-flask-container.sh')])])
                }
            }
        }
    }
}

