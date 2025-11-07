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







output "ec2_ubuntuwebserverinstance_id" { value = aws_instance.ubuntuwebserverinstance.id }
output "ec2_ubuntuwebserverinstance_public_ip" { value = aws_instance.ubuntuwebserverinstance.public_ip }
output "server_information_ubuntuwebserverinstance" {
  description = "Server detail information."
  value = {
    name       = "UbuntuWebServerInstance"
    public_ip  = aws_instance.ubuntuwebserverinstance.public_ip
    private_ip = aws_instance.ubuntuwebserverinstance.private_ip
    service_id = aws_instance.ubuntuwebserverinstance.id
    status     = 1
    additional_information = {}
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}
output "security_groups_ubuntuwebserverinstance" {
  description = "Security group detail information."
  value = {
    name        = "UbuntuWebServerInstance Security Groups"
    service_id  = aws_instance.ubuntuwebserverinstance.vpc_security_group_ids
    status      = 1
    additional_information = {}
    created_at  = local.vn_timestamp
    updated_at  = local.vn_timestamp
  }
}

output "sg_ubuntuwebserversecuritygroup_id" { value = aws_security_group.ubuntuwebserversecuritygroup.id }

output "security_group_information_ubuntuwebserversecuritygroup" {
  description = "Security group detail information."
  value = {
    name       = var.sg_ubuntuwebserversecuritygroup_name
    service_id = aws_security_group.ubuntuwebserversecuritygroup.id
    status     = 1
    additional_information = {}
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}
















