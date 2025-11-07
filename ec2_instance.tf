
# Data source for security group by name (when not in spec.security_groups)
data "aws_security_group" "__fn__getatt_____1000000000000011____groupid___" {
  name = "{'Fn::GetAtt': ['1000000000000011', 'GroupId']}"
  vpc_id = module.vpc.vpc_id
}

resource "aws_instance" "ec2_instance" {
  ami                    = var.ec2_ec2_instance_ami
  instance_type          = var.ec2_ec2_instance_instance_type
  subnet_id              = var.ec2_ec2_instance_subnet_id
  # When subnet_id is present, must use vpc_security_group_ids (IDs), not security_groups (names)
  vpc_security_group_ids = [data.aws_security_group.__fn__getatt_____1000000000000011____groupid___.id,]
  tags                   = var.ec2_ec2_instance_tags
}


