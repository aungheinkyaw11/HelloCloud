output "my_app_bucket_id" {
  value = module.my_app_bucket.bucket_id
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC created from the module"
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr
  description = "CIDR block of the VPC"
}

output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  description = "Public subnet ID"
}

output "private_subnet_id" {
  value       = module.vpc.private_subnet_id
  description = "Private subnet ID"
}