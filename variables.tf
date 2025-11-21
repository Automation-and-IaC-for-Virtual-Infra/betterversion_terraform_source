variable "region" {
  description = "aws region"
  type        = string
  default     = "ap-southeast-1"
}


variable "ec2_ec2_instance_ami" {
  description = "EC2 EC2 Instance AMI"
  type        = string
  default     = "ami-0533f2ba136362541"
}

variable "ec2_ec2_instance_instance_type" {
  description = "EC2 EC2 Instance instance type"
  type        = string
  default     = "t3.small"
}

variable "ec2_ec2_instance_subnet_id" {
  description = "EC2 EC2 Instance subnet id"
  type        = string
  default     = "public_subnet_a"
}

variable "ec2_ec2_instance_tags" {
  description = "EC2 EC2 Instance tags"
  type        = map(string)
  default     = {
  Name = "UbuntuInstance"
}
}

variable "sg_security_group_name" {
  description = "Security group name"
  type        = string
  default     = "Security Group"
}


variable "sg_security_group_description" {
  description = "Description for SG Security Group"
  type        = string
  default     = "Allow HTTP and SSH access"
}
