variable "region" {
  description = "aws region"
  type        = string
  default     = "ap-southeast-1"
}

variable "asg_ami_id" {
  description = "AMI used for ASG"
  type        = string
  default     = "ami-0abcde1234567890f"
}

variable "ec2_ubuntuwebserverinstance_ami" {
  description = "EC2 UbuntuWebServerInstance AMI"
  type        = string
  default     = "ami-0a068019672138258"
}

variable "ec2_ubuntuwebserverinstance_instance_type" {
  description = "EC2 UbuntuWebServerInstance instance type"
  type        = string
  default     = "t3.small"
}

variable "ec2_ubuntuwebserverinstance_subnet_id" {
  description = "EC2 UbuntuWebServerInstance subnet id"
  type        = string
  default     = "{'Ref': '2138405961738405'}"
}

variable "ec2_ubuntuwebserverinstance_tags" {
  description = "EC2 UbuntuWebServerInstance tags"
  type        = map(string)
  default     = {
  Name = "UbuntuWebServerInstance"
}
}

variable "sg_ubuntuwebserversecuritygroup_name" {
  description = "Security group name"
  type        = string
  default     = "UbuntuWebServerSecurityGroup"
}

variable "sg_ubuntuwebserversecuritygroup_vpc_id" {
  description = "VPC id for SG UbuntuWebServerSecurityGroup"
  type        = string
  default     = "{'Ref': '1029384756102938'}"
}

variable "sg_ubuntuwebserversecuritygroup_description" {
  description = "Description for SG UbuntuWebServerSecurityGroup"
  type        = string
  default     = "Allow HTTP and SSH access"
}
