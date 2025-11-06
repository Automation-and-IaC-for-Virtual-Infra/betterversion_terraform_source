terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }
  required_version = ">=1.6.3"
  backend "s3" {
    bucket = "khuong-bucket-tfstate"
    key    = "2025/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.public_key
}

resource "aws_instance" "web_instance" {
  ami                    = data.aws_ami.ubuntu.id
  key_name               = aws_key_pair.deployer.key_name
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg_ssh.id, aws_security_group.sg_http.id]
  user_data              = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              sed -i -e 's/80/8080/' /etc/apache2/ports.conf
              echo "Hello World" > /var/www/html/index.html
              systemctl restart apache2
              EOF
  tags = {
    Name = "web-instance"
  }
}

resource "aws_security_group" "sg_ssh" {
  name = "sg_ssh"
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sg_http" {
  name = "sg_http"
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

locals {
  apply_timestamp = timestamp()
  vn_timestamp = formatdate("YYYY-MM-DD hh:mm:ss", timeadd(local.apply_timestamp, "7h"))
}
