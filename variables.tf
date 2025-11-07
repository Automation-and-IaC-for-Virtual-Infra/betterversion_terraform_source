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
  default     = "{'Fn::ImportValue': 'resolve:ssm:/aws/service/canonical/ubuntu/server/22.04/stable/current/amd64/hvm/ebs-gp2/ami-id'}"
}

variable "ec2_ec2_instance_instance_type" {
  description = "EC2 EC2 Instance instance type"
  type        = string
  default     = "t3.small"
}

variable "ec2_ec2_instance_subnet_id" {
  description = "EC2 EC2 Instance subnet id"
  type        = string
  default     = "{'Ref': '1000000000000002'}"
}

variable "ec2_ec2_instance_tags" {
  description = "EC2 EC2 Instance tags"
  type        = map(string)
  default     = {
  Name = "UbuntuNginxInstance"
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
  default     = "{'Ref': '1000000000000001'}"
}

variable "sg_security_group_description" {
  description = "Description for SG Security Group"
  type        = string
  default     = "Allow HTTP and SSH access"
}
