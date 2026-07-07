output "vpc_id" {
  description = "ID of the VPC created by the network module"
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.this.cidr_block
}

output "public_subnet_id" {
  description = "ID of the public subnet created for the Bastion Host"
  value       = aws_subnet.public.id
}