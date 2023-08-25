# Terraform Block
terraform {
  #required_version = "~> 0.13"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = " 5.13.1"
    }
  }
}

# Provider Block
provider "aws" {
    profile = "default"
    region = "us-east-1"
  
}

/*
Note-1: AWS Credentials Profile (profile = "default") configured on your local desktop terminal
aws configure 
cat $HOME/.aws/credentials
*/