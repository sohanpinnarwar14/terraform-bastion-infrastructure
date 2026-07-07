variable "vpc_id" {
  type = string
}

variable "allowed_ssh_cidr" {
  type = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC for restricted Bastion outbound SSH"
  type        = string
}


