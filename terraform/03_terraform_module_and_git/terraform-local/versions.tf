terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["/home/zane/.aws/config"]
  shared_credentials_files = ["/home/zane/.aws/credentials"]
  profile                  = "cloudlab-master"
  region                   = "ap-southeast-1"
}
