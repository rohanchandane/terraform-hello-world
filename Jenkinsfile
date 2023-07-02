pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code repository
                sh 'git checkout https://github.com/rohanchandane/terraform-hello-world.git'
            }
        }

        stage('Terraform Init') {
            steps {
                // Navigate to the cloned Terraform repository directory
                dir('terraform') {
                    // Run Terraform initialization
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                // Navigate to the cloned Terraform repository directory
                dir('terraform') {
                    // Run Terraform apply to update the infrastructure
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
