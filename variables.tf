variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "AWS EC2 Key Pair Name"
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
  description = "CIDR block allowed to SSH into the Bastion Host"
  type        = string
}