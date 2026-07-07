variable "region" {
  description = "AWS Region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}


variable "allowed_ssh_cidr" {
  description = "CIDR allowed for SSH access"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.allowed_ssh_cidr))
    error_message = "The allowed SSH CIDR must be a valid IPv4 CIDR block."
  }

  validation {
    condition     = var.allowed_ssh_cidr != "0.0.0.0/0"
    error_message = "SSH access must not be open to the entire internet."
  }
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair created for the Bastion Host"
  type        = string
  default     = "bastion-key"
}


variable "project_name" {
  description = "Name of the project used for resource naming"
  type        = string
  default     = "bastion"
}

variable "vpc_cidr" {
  description = "CIDR block for the project VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the Bastion public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability Zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}