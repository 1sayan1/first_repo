pipeline {
    agent any

    environment {
        DOCKER_HOST = 'unix:///Users/sayandutta/.docker/run/docker.sock'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/1sayan1/first_repo.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Apply Terraform') {
            steps {
                // Apply Terraform configuration
                sh 'terraform apply -auto-approve'
            }
        }
    }
}