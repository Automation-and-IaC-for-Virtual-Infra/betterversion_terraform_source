terraform {
  required_version = ">=1.6.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.15.0"
    }
  }
}

provider "aws" {
  region = var.region
}


locals {
  apply_timestamp = timestamp()
  vn_timestamp    = formatdate("YYYY-MM-DD hh:mm:ss", timeadd(local.apply_timestamp, "7h"))
  project         = "generated-project"
}
