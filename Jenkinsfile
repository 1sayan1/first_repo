pipeline {
    agent any
    
    environment {
        PATH = "$PATH:/opt/homebrew/bin/terraform"
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Git repository
                git 'https://github.com/1sayan1/first_repo.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform and download providers/plugins
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Apply Terraform changes (create/update resources)
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
