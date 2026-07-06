# Fetch the existing VPC using its CIDR block
data "aws_vpc" "existing" {
  filter {
    name   = "cidr"
    values = ["172.31.0.0/16"]
  }
}

# Fetch the existing subnet using its VPC and CIDR block
data "aws_subnet" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.existing.id]
  }

  filter {
    name   = "cidr-block"
    values = ["172.31.16.0/20"]
  }
}