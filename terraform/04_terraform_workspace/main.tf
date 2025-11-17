locals {
  provider_alias = terraform.workspace
}

# Create VPC
resource "aws_vpc" "cloudlab_vpc" {
    cidr_block = var.cloudlab_vpc_cidr
    enable_dns_hostnames = true

    tags = {
      Name = "cloudlab-vpc-${local.provider_alias}"
    }
}

# Use Data Source to get all availability zones in the specified region
data "aws_availability_zones" "cloudlab_available_azs" {
    state = "available"
}