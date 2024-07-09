pipeline {
    agent any

    environment {
        DOCKER_HOST = 'unix:///Users/sayandutta/.docker/run/docker.sock'
        PATH = "/opt/homebrew/bin:${env.PATH}" // Add the Terraform path here
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
                // Print PATH for debugging
                sh 'echo $PATH'
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Apply Terraform') {
            environment {
                ADMIN_PASSWORD = credentials('Sayan@1993') // Replace with your credentials ID
            }
            steps {
                // Apply Terraform configuration with required variables
                sh 'terraform apply -var="admin_password=${ADMIN_PASSWORD}" -auto-approve'
            }
        }
    }
}
