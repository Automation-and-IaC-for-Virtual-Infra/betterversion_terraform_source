region = "ap-southeast-1"
asg_ami_id = "ami-0abcde1234567890f"
ec2_ubuntuwebserverinstance_ami = "ami-0a068019672138258"
ec2_ubuntuwebserverinstance_instance_type = "t3.small"
ec2_ubuntuwebserverinstance_subnet_id = "{'Ref': '2138405961738405'}"
ec2_ubuntuwebserverinstance_tags = {
  Name = "UbuntuWebServerInstance"
}
sg_ubuntuwebserversecuritygroup_name = "UbuntuWebServerSecurityGroup"
sg_ubuntuwebserversecuritygroup_vpc_id = "{'Ref': '1029384756102938'}"
sg_ubuntuwebserversecuritygroup_description = "Allow HTTP and SSH access"
