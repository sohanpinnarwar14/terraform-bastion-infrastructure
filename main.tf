# resource "aws_instance" "bastion" {

#   ami                         = var.ami
#   instance_type               = var.instance_type

#   subnet_id                   = var.public_subnet_id

#   vpc_security_group_ids      = [aws_security_group.bastion_sg.id]

#   associate_public_ip_address = true

#   key_name                    = var.key_name

#   tags = {
#     Name = "Bastion-Host"
#   }
# }

module "bastion" {
  source = "./modules/bastion"

  vpc_id           = var.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
  ami              = var.ami
  instance_type    = var.instance_type
  public_subnet_id = var.public_subnet_id
  key_name         = var.key_name
}
