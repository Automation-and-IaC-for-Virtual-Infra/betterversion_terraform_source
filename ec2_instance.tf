
# Data source for security group by name (when not in spec.security_groups)
data "aws_security_group" "__fn__getatt_____9805172638405172____groupid___" {
  name = "{'Fn::GetAtt': ['9805172638405172', 'GroupId']}"
  vpc_id = module.vpc.vpc_id
}

resource "aws_instance" "ubuntuwebserverinstance" {
  ami                    = var.ec2_ubuntuwebserverinstance_ami
  instance_type          = var.ec2_ubuntuwebserverinstance_instance_type
  subnet_id              = var.ec2_ubuntuwebserverinstance_subnet_id
  # When subnet_id is present, must use vpc_security_group_ids (IDs), not security_groups (names)
  vpc_security_group_ids = [data.aws_security_group.__fn__getatt_____9805172638405172____groupid___.id,]
  tags                   = var.ec2_ubuntuwebserverinstance_tags
}


