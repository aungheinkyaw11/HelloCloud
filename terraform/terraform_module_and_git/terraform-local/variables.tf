variable "aws_profile" {
  type    = string
  default = "default"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type    = string
  default = "ahk-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "public_subnet_name" {
  type    = string
  default = "ahk-public-subnet"
}

variable "private_subnet_name" {
  type    = string
  default = "ahk-private-subnet"
}

variable "public_sg_name" {
  type    = string
  default = "ahk-public-sg"
}

variable "private_sg_name" {
  type    = string
  default = "ahk-private-sg"
}
