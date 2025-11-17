variable "cloudlab-master-region" {
  type    = string
  default = "ap-southeast-1"
}

variable "cloudlab-prod-region" {
  type    = string
  default = "ap-southeast-1"
}

variable "cloudlab-master-role-arn" {
  type = string
  default = "arn:aws:iam::822961100168:role/cloudlab-master-terraform-role"
}