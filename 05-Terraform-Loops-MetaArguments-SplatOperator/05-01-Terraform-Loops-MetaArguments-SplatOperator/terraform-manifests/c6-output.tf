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

# Output - For Loop with List
output "for_output_list"{
  description = " for loop with list"
  value =[for instance in aws_instance.demo: instance.public_dns]

}

# Output - For Loop with Map
output "for_output_map1" {
  description = "for loop for map1"
  value = { for instance in aws_instance.demo: instance.id => instance.public_dns}
}


# Output - For Loop with Map Advanced
output "for_output_map2" {
  description = "for loop with Map - advanced"
  value = { for c, instance in aws_instance.demo: c => instance.public_dns} # c is count for every number of count u 
  #specify
}

# Output Legacy Splat Operator (latest) - Returns the List for count instances
output "legacy_splat_instance_publicdns"{
  description = "legacy splat operator"
  value = aws_instance.demo.*.public_dns # about to be discontinue

}  

# Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns"{
  description = "generalized splat operator"
  value = aws_instance.demo[*].public_dns #for count instances
}
