variable "cloudlab_aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "cloudlab_vpc_cidr" {
  description = "CIDR block for the CloudLab VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "provider_env_assumed_role" {
  description = "The assumed role for the provider environment"
  type        = map(any)
  default = {
    "cloudlab-master" = "arn:aws:iam::822961100168:role/hellocloud-ahk-aws-master-terraform-role"
    "cloudlab-prod"   = "arn:aws:iam::595226768173:role/hellocloud-ahk-aws-prod-terraform-role"
    "cloudlab-dev"    = "arn:aws:iam::254292659128:role/hellocloud-ahk-aws-dev-terraform-role"
  }
}