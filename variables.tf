variable "region" {
  description = "aws region"
  default = "ap-southeast-1"
}

variable "public_key" {
  type        = string
  description = "SSH public key content"
}