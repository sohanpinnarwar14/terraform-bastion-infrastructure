# Generate a new RSA private key
resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Register the generated public key as an AWS EC2 key pair
resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh

  tags = {
    Name = var.key_name
  }
}