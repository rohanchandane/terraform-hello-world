pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code repository
                sh 'rm -rf terraform-hello-world'
                sh 'git clone https://github.com/rohanchandane/terraform-hello-world.git'
            }
        }

        stage('Terraform Init') {
            steps {
                // Navigate to the cloned Terraform repository directory
                dir('terraform-hello-world') {
                    // Run Terraform initialization
                    sh 'ls -l'
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                // Navigate to the cloned Terraform repository directory
                dir('terraform-hello-world') {
                    // Run Terraform apply to update the infrastructure
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
