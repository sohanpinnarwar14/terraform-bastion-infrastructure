module "security_group" {
  source = "./modules/security-group"

  vpc_id           = var.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "bastion" {
  source = "./modules/bastion"

  ami               = var.ami
  instance_type     = var.instance_type
  public_subnet_id  = var.public_subnet_id
  key_name          = var.key_name
  security_group_id = module.security_group.security_group_id
}

