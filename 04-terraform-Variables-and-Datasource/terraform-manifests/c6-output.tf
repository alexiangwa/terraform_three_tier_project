# terraform output
output "pulic_ip" {
  description = "EC2 instance Public IP"
  value = aws_instance.demo.public_ip
}

output "private_ip" {
  description = "EC2 instance Public IP"
  value = aws_instance.demo.private_ip
}

output "instance_publicdns" {
  description = "EC2 instance Public DNS"
  value = aws_instance.demo.public_dns
}