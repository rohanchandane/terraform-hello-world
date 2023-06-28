# Provider configuration
provider "null" {}

# Resource configuration
resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo 'Hello, World!'"
  }
}