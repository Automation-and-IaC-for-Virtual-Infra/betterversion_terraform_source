output "region" {
  value = var.region
}

output "vpc_id" { value = module.vpc.vpc_id }
output "public_subnets" { value = module.vpc.public_subnets }
output "private_subnets" { value = module.vpc.private_subnets }

output "vpc_information" {
  description = "VPC detail information."
  value = {
    name       = "VPC"
    service_id = module.vpc.vpc_id
    status     = 1
    additional_information = {
      public_subnets   = module.vpc.public_subnets
      private_subnets  = module.vpc.private_subnets
      database_subnets = try(module.vpc.database_subnets, null)
    }
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}







output "ec2_ec2_instance_id" { value = aws_instance.ec2_instance.id }
output "ec2_ec2_instance_public_ip" { value = aws_instance.ec2_instance.public_ip }
output "server_information_ec2_instance" {
  description = "Server detail information."
  value = {
    name       = "EC2 Instance"
    public_ip  = aws_instance.ec2_instance.public_ip
    private_ip = aws_instance.ec2_instance.private_ip
    service_id = aws_instance.ec2_instance.id
    status     = 1
    additional_information = {}
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}
output "security_groups_ec2_instance" {
  description = "Security group detail information."
  value = {
    name        = "EC2 Instance Security Groups"
    service_id  = aws_instance.ec2_instance.vpc_security_group_ids
    status      = 1
    additional_information = {}
    created_at  = local.vn_timestamp
    updated_at  = local.vn_timestamp
  }
}
output "ec2_ec2_instance_id" { value = aws_instance.ec2_instance.id }
output "ec2_ec2_instance_public_ip" { value = aws_instance.ec2_instance.public_ip }
output "server_information_ec2_instance" {
  description = "Server detail information."
  value = {
    name       = "EC2 Instance"
    public_ip  = aws_instance.ec2_instance.public_ip
    private_ip = aws_instance.ec2_instance.private_ip
    service_id = aws_instance.ec2_instance.id
    status     = 1
    additional_information = {}
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}
output "security_groups_ec2_instance" {
  description = "Security group detail information."
  value = {
    name        = "EC2 Instance Security Groups"
    service_id  = aws_instance.ec2_instance.vpc_security_group_ids
    status      = 1
    additional_information = {}
    created_at  = local.vn_timestamp
    updated_at  = local.vn_timestamp
  }
}

output "sg_security_group_id" { value = aws_security_group.security_group.id }

output "security_group_information_security_group" {
  description = "Security group detail information."
  value = {
    name       = var.sg_security_group_name
    service_id = aws_security_group.security_group.id
    status     = 1
    additional_information = {}
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}
















