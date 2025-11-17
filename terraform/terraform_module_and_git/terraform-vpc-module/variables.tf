variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
  default     = "cloudlab-master"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "ahk-vpc"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "public_subnet_name" {
  description = "Public subnet name"
  type        = string
  default     = "ahk-public-subnet"
}

variable "private_subnet_name" {
  description = "Private subnet name"
  type        = string
  default     = "ahk-private-subnet"
}