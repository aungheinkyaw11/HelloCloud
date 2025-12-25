variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "deployment_name" {
  description = "Deployment name, used to prefix resources"
  type        = string
  default     = ""
}

variable "aws_profile" {
  description = "aws profile name"
  type        = string
  default     = "cloudlab-master"
}