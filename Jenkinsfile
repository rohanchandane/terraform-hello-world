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

                withCredentials([string(credentialsId: 'TERRAFORM_CLOUD_LOGIN_TOKEN', variable: 'TF_TOKEN_app_terraform_io')]) {
                    // Navigate to the cloned Terraform repository directory
                    dir('terraform-hello-world') {
                        // Run Terraform initialization
                        sh 'ls -l'
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([string(credentialsId: 'TERRAFORM_CLOUD_LOGIN_TOKEN', variable: 'TF_TOKEN_app_terraform_io')]) {
                    // Navigate to the cloned Terraform repository directory
                    dir('terraform-hello-world') {
                        // Run Terraform apply to update the infrastructure
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}
