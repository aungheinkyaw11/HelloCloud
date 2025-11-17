output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets_ids" {
  description = "Private Subnets IDs"
  value       = module.vpc.private_subnets
}

output "public_subnets_ids" {
  description = "Public Subnets IDs"
  value       = module.vpc.public_subnets
}