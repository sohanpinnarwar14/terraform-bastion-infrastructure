output "bastion_public_ip" {
  value = module.ec2.public_ip
}

output "bastion_public_dns" {
  value = module.ec2.public_dns
}