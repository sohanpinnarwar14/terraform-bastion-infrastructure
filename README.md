# Terraform AWS Bastion Host Infrastructure
## Architecture

The Terraform configuration creates:

- A dedicated VPC
- A public subnet
- An Internet Gateway
- A public route table and association
- A security group with restricted SSH access
- A Terraform-managed EC2 key pair
- A hardened Amazon Linux 2023 Bastion Host

## Project Structure


.
├── modules/
│   ├── network/
│   ├── bastion/
│   ├── key-pair/   
│   └── security-group/
├── backend.tf
├── data.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md

Security Features

SSH access is restricted to an explicitly allowed CIDR.

SSH access from 0.0.0.0/0 is blocked by variable validation.

Bastion outbound SSH is restricted to the VPC CIDR.

EC2 Instance Metadata Service v2 (IMDSv2) is required.

The root EBS volume is encrypted and uses gp3.

The private SSH key is marked as a sensitive Terraform output.

Terraform state is stored remotely in an encrypted S3 backend.

S3 native state locking is enabled.

S3 bucket versioning is enabled.


