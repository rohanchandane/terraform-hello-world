pipeline {
    agent any

    stages {
        stage('Set Terraform Cloud Token') {
            steps {
                withCredentials([string(credentialsId: 'TERRAFORM_CLOUD_SESSION_TOKEN', variable: 'TF_TOKEN_terraform_io')]) {
                    sh """
                        export TF_TOKEN_terraform_io
                    """
                }
            }
        }

        stage('Checkout') {
            steps {
                // Checkout your Terraform code repository
                sh 'rm -rf terraform-hello-world'
                sh 'git clone https://github.com/rohanchandane/terraform-hello-world.git'
            }
        }

        stage('Terraform Init') {
            steps {

                // Run Terraform login to authenticate with Terraform Cloud or Terraform Enterprise
                sh 'terraform login $TERRAFORM_CLOUD_LOGIN_TOKEN'

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
