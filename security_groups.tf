# Security Groups

resource "aws_security_group" "app" {
  name        = "${local.project}-app"
  description = "Application Security Group"
  vpc_id      = module.vpc.vpc_id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Project = local.project
    Name    = "${local.project}-app"
  }
}

resource "aws_security_group" "ubuntuwebserversecuritygroup" {
  name        = var.sg_ubuntuwebserversecuritygroup_name
  description = var.sg_ubuntuwebserversecuritygroup_description
  vpc_id      = module.vpc.vpc_id



  tags = {
    Project = local.project
    Name    = var.sg_ubuntuwebserversecuritygroup_name
  }
}

