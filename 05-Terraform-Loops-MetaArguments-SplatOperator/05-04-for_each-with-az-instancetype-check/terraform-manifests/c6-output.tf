# terraform output
# output "pulic_ip" {
#   description = "EC2 instance Public IP"
#   value = aws_instance.demo.public_ip
# }

# output "private_ip" {
#   description = "EC2 instance Public IP"
#   value = aws_instance.demo.private_ip
# }

# output "instance_publicdns" {
#   description = "EC2 instance Public DNS"
#   value = aws_instance.demo.public_dns
# }

#terraform output values
# EC2 Instance Public IP with TOSET
output "instance_publicip" {
  description = "EC2 instance Public IP"
  # value = aws_instance.demo.*.public_ip  #legacy splat
 # value = aws_instance.demo[*].public_ip  # latest splat
 #value = [for instance in aws_aws_instance.demo: instance.public_ip] or
  value = toset([for instance in aws_instance.demo: instance.public_ip])
}

# EC2 Instance Public DNS with TOSET
output "instance_publicdns" {
  description = "EC2 instance Public DNS"
  # value = aws_instance.demo.*.public_dns  #legacy splat
  #value = aws_instance.demo[*].public_dns  # latest splat
 #  value = [for instance in aws_aws_instance.demo: instance.public_dns] or
   value = toset([for instance in aws_instance.demo: instance.public_dns])
}