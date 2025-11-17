terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # shared_config_files      = ["/home/zane/.aws/config"]
  # shared_credentials_files = ["/home/zane/.aws/credentials"]
  profile                  = "cloudlab-master"
  alias                    = "cloudlab-master"
  region                   = var.cloudlab-master-region
}

provider "aws" {
  # shared_config_files      = ["/home/zane/.aws/config"]
  # shared_credentials_files = ["/home/zane/.aws/credentials"]
  profile                  = "cloudlab-prod"
  alias                    = "cloudlab-prod"
  region                   = var.cloudlab-prod-region
}


provider "aws" {
  profile                  = "cloudlab-master-role-arn"
  alias                    = "cloudlab-master-role-arn"
  assume_role {
    role_arn = "arn:aws:iam::822961100168:role/cloudlab-master-terraform-role"
  }
  region                   = var.cloudlab-prod-region
}