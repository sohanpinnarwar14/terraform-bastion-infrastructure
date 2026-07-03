# resource "aws_security_group" "bastion_sg" {
#   name        = "bastion-sg"
#   description = "Allow SSH access to Bastion Host"
#   vpc_id      = var.vpc_id

#   ingress {
#     description = "Allow SSH"

#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"

#    cidr_blocks = ["49.36.238.190/32"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"

#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "Bastion-Security-Group"
#   }
# }