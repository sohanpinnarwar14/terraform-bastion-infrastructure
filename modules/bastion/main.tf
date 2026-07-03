module "ec2" {
  source = "../ec2"

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id

  security_group_ids = [var.security_group_id]

  associate_public_ip_address = true

  key_name      = var.key_name
  instance_name = "Bastion-Host"
}