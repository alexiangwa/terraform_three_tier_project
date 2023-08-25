# input variables

variable "aws_region" {
    description = " Region i which AWS Resources to be created"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    description = "ec2 instance type"
    type = string
    default = "t2.micro"

}

variable "instance_keypair" {
    description = "AWS EC2 key pair that needs to be associated with ec2 instance"
    type = string
    default = "terraform-key"
  
}