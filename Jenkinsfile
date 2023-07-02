pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code repository
                git 'https://github.com/rohanchandane/terraform-hello-world.git'
            }
        }

        stage('Terraform Init') {
            steps {
                // Run Terraform initialization
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Run Terraform apply to update the infrastructure
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
