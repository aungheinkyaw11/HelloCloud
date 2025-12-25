variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "hello"
}

variable "aws_region" {
    type        = string
    description = "AWS region used for all resources"
    default     = "us-east-1"
  
}

variable "aws_zone" {
  type        = string
  description = "AWS zone used for all resources"
  default     = "us-east-1a"
}

variable "instance_type" {
  type        = string
  description = "Instance type used for all EC2 instances"
  default     = "t3.micro"
}

locals {
  node_username = "ec2-user"
}
