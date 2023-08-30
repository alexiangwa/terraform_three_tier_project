#availability zone datasources
data "aws_availability_zones" "my_az" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}


#Resource: EC2 Instance
resource "aws_instance" "demo" {
  ami = data.aws_ami.amxlinux2.id
  #instance_type = var.instance_type
  instance_type = var.instance_type_list[0] #(the 0 here is the index number of the first instance type for list)
  #instance_type = var.instance_type_map["dev"] #for map
  user_data = file("${path.module}/app1.install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id , aws_security_group.vpc-web.id ]
  #availability_zone = data.aws_availability_zones.my_az.names
  for_each = toset(data.aws_availability_zones.my_az.names) # for each will take every az in the  its a (map or set f strings), and toset will
  # toset convert the arguements to a set value ["a","b" ,"3"]
  availability_zone = each.key # you can also use each.value because for list items each.key == eacch.value
  #count = 2
  tags = {
    "Name"="for_each-DEMO-${each.value}"
  }
}