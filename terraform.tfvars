region = "ap-southeast-1"
asg_ami_id = "ami-0abcde1234567890f"
ec2_ec2_instance_ami = "ami-0c55b159cbfafe1f0"
ec2_ec2_instance_instance_type = "t3.micro"
ec2_ec2_instance_subnet_id = "{'Ref': '1000000000000002'}"
ec2_ec2_instance_tags = {
  Name = "WebServerInstance"
}
ec2_ec2_instance_ami = "ami-0c55b159cbfafe1f0"
ec2_ec2_instance_instance_type = "t3.medium"
ec2_ec2_instance_subnet_id = "subnet-xxxxxxxxxxxxxxxxx"
ec2_ec2_instance_tags = {
  Name = "ShoppingAppInstance"
  Application = "ShoppingApp"
  Environment = "Production"
}
sg_security_group_name = "Security Group"
sg_security_group_vpc_id = "{'Ref': '1000000000000001'}"
sg_security_group_description = "Allow HTTP, HTTPS, and SSH"
