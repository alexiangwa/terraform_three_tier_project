#Resource: EC2 Instance
resource "aws_instance" "demo" {
  ami = data.aws_ami.amxlinux2.id
  #instance_type = var.instance_type
  instance_type = var.instance_type_list[0] #(the 0 here is the index number of the first instance type for list)
  #instance_type = var.instance_type_map["dev"] #for map
  user_data = file("${path.module}/app1.install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id , aws_security_group.vpc-web.id ]
  count = 2
  tags = {
    "Name"="EC2-DEMO-${count.index}"
  }
}