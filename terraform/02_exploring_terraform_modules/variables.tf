variable "aws_region" {
  description = "AWS region to deploy resource into"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "AWS region to deploy resource into"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "AZ to VPC"
  type        = list(string)
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "private_subnets" {
  description = "CIDR block for private subnets"
  type        = list(string)
  default = [
    "10.0.0.0/19",
    "10.0.32.0/19",
    "10.0.64.0/19"
  ]
}

variable "public_subnets" {
  description = "CIDR block for public subnets"
  type        = list(string)
  default = [
    "10.0.128.0/20",
    "10.0.144.0/20",
    "10.0.160.0/20"
  ]
}