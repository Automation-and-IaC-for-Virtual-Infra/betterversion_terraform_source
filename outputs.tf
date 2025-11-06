output "server_information" {
  description = "Server detail information."
  value = {
    name = "EC2 Instance"
    public_ip = aws_instance.web_instance.public_ip
    private_ip = aws_instance.web_instance.private_ip
    service_id = aws_instance.web_instance.id
    status = 1
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}

output "security_groups_ssh" {
  description = "Security group detail information."
  value = {
    name = "EC2 Security Groups For SSH"
    service_id = aws_security_group.sg_ssh.id
    status = 1
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}

output "security_groups_http" {
  description = "Security group detail information."
  value = {
    name = "EC2 Security Groups for Http"
    service_id = aws_security_group.sg_http.id
    status = 1
    created_at = local.vn_timestamp
    updated_at = local.vn_timestamp
  }
}
