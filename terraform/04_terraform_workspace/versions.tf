terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
     }
   }
}

provider "aws" {
    profile = "cloudlab-master"
    assume_role {
        role_arn = var.provider_env_assumed_role[terraform.workspace]
    }
    region = var.cloudlab_aws_region
}