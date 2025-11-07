region = "ap-southeast-1"
asg_ami_id = "ami-0abcde1234567890f"
ec2_ec2_instance_ami = "{'Fn::ImportValue': 'resolve:ssm:/aws/service/canonical/ubuntu/server/22.04/stable/current/amd64/hvm/ebs-gp2/ami-id'}"
ec2_ec2_instance_instance_type = "t3.small"
ec2_ec2_instance_subnet_id = "{'Ref': '1000000000000002'}"
ec2_ec2_instance_tags = {
  Name = "UbuntuNginxInstance"
}
sg_security_group_name = "Security Group"
sg_security_group_vpc_id = "{'Ref': '1000000000000001'}"
sg_security_group_description = "Allow HTTP and SSH access"
