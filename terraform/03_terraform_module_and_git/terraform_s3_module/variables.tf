variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "ahk-s3-12321"
}

variable "region" {
  description = "The AWS region to create the bucket in"
  type        = string
  default     = "ap-southeast-1"
}

variable "tags" {
  type = map(string)
  default = {
    Name       = "ahk-terraform-s3"
    nvironment = "Prod"
    Owner      = "AHK"
    Project    = "Terraform Demo"
  }
}