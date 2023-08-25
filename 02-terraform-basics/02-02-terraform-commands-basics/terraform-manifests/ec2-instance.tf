# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production 5.13.1
    }
  }
}

# Provider Block
provider "aws" {
  profile = "terraform" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-08a52ddb321b32a8c" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}