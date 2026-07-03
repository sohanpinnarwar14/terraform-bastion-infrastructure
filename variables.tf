variable "region" {
  description = "AWS Region"
  type        = string
}

variable "ami" {
  description = "AMI ID for Bastion Host"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "AWS Key Pair name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public Subnet ID"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed for SSH access"
  type        = string
}