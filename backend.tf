terraform {
  backend "s3" {
    bucket       = "sohan-terraform-state-792192391767"
    key          = "bastion-host/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
