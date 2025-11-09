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

variable "ec2_ec2_instance_ami" {
  description = "EC2 EC2 Instance AMI"
  type        = string
  default     = "ami-0a0e1042571252119"
}

variable "ec2_ec2_instance_instance_type" {
  description = "EC2 EC2 Instance instance type"
  type        = string
  default     = "t3.small"
}

variable "ec2_ec2_instance_subnet_id" {
  description = "EC2 EC2 Instance subnet id"
  type        = string
  default     = "webserver_public_subnet_a"
}

variable "ec2_ec2_instance_tags" {
  description = "EC2 EC2 Instance tags"
  type        = map(string)
  default     = {
  Name = "NginxInstance"
}
}

variable "sg_security_group_name" {
  description = "Security group name"
  type        = string
  default     = "Security Group"
}

variable "sg_security_group_vpc_id" {
  description = "VPC id for SG Security Group"
  type        = string
  default     = "webserver_vpc"
}

variable "sg_security_group_description" {
  description = "Description for SG Security Group"
  type        = string
  default     = "Allow HTTP and SSH access to webserver"
}
