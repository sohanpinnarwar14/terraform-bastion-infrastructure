# Create the security group for the Bastion Host
module "security_group" {
  source = "./modules/security-group"

  vpc_id           = data.aws_vpc.existing.id
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

# Create the Bastion Host EC2 instance
module "bastion" {
  source = "./modules/bastion"

  ami               = var.ami
  instance_type     = var.instance_type
  public_subnet_id  = data.aws_subnet.public.id
  key_name          = var.key_name
  security_group_id = module.security_group.security_group_id
}