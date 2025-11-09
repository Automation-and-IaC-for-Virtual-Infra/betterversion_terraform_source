region = "ap-southeast-1"
asg_ami_id = "ami-0abcde1234567890f"
ec2_ec2_instance_ami = "ami-0a0e1042571252119"
ec2_ec2_instance_instance_type = "t3.small"
ec2_ec2_instance_subnet_id = "webserver_public_subnet_a"
ec2_ec2_instance_tags = {
  Name = "NginxInstance"
}
sg_security_group_name = "Security Group"
sg_security_group_vpc_id = "webserver_vpc"
sg_security_group_description = "Allow HTTP and SSH access to webserver"
