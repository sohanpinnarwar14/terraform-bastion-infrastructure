module "network" {
  source = "./modules/network"

  project_name       = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}

module "key_pair" {
  source = "./modules/key-pair"

  key_name = var.key_pair_name
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id           = module.network.vpc_id
  vpc_cidr         = module.network.vpc_cidr
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "bastion" {
  source = "./modules/bastion"

  ami               = data.aws_ami.amazon_linux.id
  instance_type     = var.instance_type
  public_subnet_id  = module.network.public_subnet_id
  key_name          = module.key_pair.key_name
  security_group_id = module.security_group.security_group_id
}
