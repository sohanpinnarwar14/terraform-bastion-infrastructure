resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  description = "Allow SSH access to Bastion Host"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  egress {
    description = "Allow SSH from Bastion Host to instances within the VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  tags = {
    Name = "Bastion-Security-Group"
  }
}