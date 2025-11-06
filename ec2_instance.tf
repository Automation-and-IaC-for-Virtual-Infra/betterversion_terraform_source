resource "aws_instance" "ec2_instance" {
  ami                    = var.ec2_ec2_instance_ami
  instance_type          = var.ec2_ec2_instance_instance_type
  # In LocalStack, prefer a subnet from the generated VPC instead of a hardcoded ID
  subnet_id              = var.use_localstack ? element(module.vpc.private_subnets, 0) : var.ec2_ec2_instance_subnet_id
  vpc_security_group_ids = ["{'Fn::GetAtt': ['1000000000000011', 'GroupId']}",]
  tags                   = var.ec2_ec2_instance_tags
}

resource "aws_instance" "ec2_instance" {
  ami                    = var.ec2_ec2_instance_ami
  instance_type          = var.ec2_ec2_instance_instance_type
  # In LocalStack, prefer a subnet from the generated VPC instead of a hardcoded ID
  subnet_id              = var.use_localstack ? element(module.vpc.private_subnets, 0) : var.ec2_ec2_instance_subnet_id
  vpc_security_group_ids = ["sg-xxxxxxxxxxxxxxxxx",]
  tags                   = var.ec2_ec2_instance_tags
}


