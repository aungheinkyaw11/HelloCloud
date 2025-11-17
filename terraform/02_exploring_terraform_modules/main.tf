module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "5.7.1"
  cidr            = var.vpc_cidr
  azs             = var.vpc_azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}