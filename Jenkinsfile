// Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'ls' 
                sh 'docker build -t flask-app:2.0 .'
                }
            }
        }
        stage('Push image to ECR'){
            steps{
                sh 'docker build -t flask-app:2.0 .'
                sh 'docker tag flask-app:2.0 870461622945.dkr.ecr.us-east-1.amazonaws.com/lavi-devops-course:flask-app-2.0'
                sh 'docker tag flask-app:2.0 870461622945.dkr.ecr.us-east-1.amazonaws.com/lavi-devops-course:flask-app-2.0'
            }
        }
    }

