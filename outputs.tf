output "bastion_public_ip" {
  value = module.bastion.bastion_public_ip
}

output "bastion_public_dns" {
  value = module.bastion.bastion_public_dns
}


output "bastion_private_key_pem" {
  description = "Private key for SSH access to the Bastion Host"
  value       = module.key_pair.private_key_pem
  sensitive   = true
}