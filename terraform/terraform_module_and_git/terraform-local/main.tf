module "my_app_bucket" {
  source      = "git::https://github.com/aungheinkyaw11/terraform-s3-module.git"
  bucket_name = "ahk-gitmodule-9876"
  region      = "ap-southeast-1"
  tags = {
    Name        = "ahk-gitmodule-9876"
    Environment = "Testing"
  }
}

module "vpc" {
  source              = "../terraform-vpc-module"
  vpc_name            = var.vpc_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  public_subnet_name  = var.public_subnet_name
  private_subnet_name = var.private_subnet_name
}