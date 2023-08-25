#Resource: EC2 Instance
resource "aws_instance" "demo" {
  ami = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1.install.sh")
  tags = {
    "Name"="EC2 DEMO"
  }
}