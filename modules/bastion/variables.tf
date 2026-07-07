variable "ami" {
  description = "AMI ID used to launch the Bastion Host"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the Bastion Host"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet where the Bastion Host is deployed"
  type        = string
}

variable "key_name" {
  description = "Name of the Terraform-managed EC2 key pair"
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group attached to the Bastion Host"
  type        = string
}