terraform {
  required_version = ">= 1.0.0" # Ensure that the Terraform version is 1.0.0 or higher

  required_providers {
    aws = {
      source = "hashicorp/aws" # Specify the source of the AWS provider
      version = "~> 4.0"        # Use a version of the AWS provider that is compatible with version
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "existing" {
  ami           = "ami-0ae9f87d24d606be4"
  instance_type = "t2.micro"
  subnet_id = "subnet-0c37a0c84ea9ecf90"
  key_name = "test_terra"
}