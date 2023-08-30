# input variables

variable "aws_region" {
    description = " Region i which AWS Resources to be created"
    type = string
    default = "us-west-2"
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
# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instnace Type"
  type = list(string)
  default = ["t2.micro", "t3.micro"]
}


# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instnace Type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa"  = "t3.micro"
    "prod" = "t3.small"
  }
}