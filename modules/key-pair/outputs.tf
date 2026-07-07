output "key_name" {
  description = "Name of the Terraform-managed EC2 key pair"
  value       = aws_key_pair.this.key_name
}

output "private_key_pem" {
  description = "Private key for SSH access to the Bastion Host"
  value       = tls_private_key.this.private_key_pem
  sensitive   = true
}