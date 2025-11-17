output "cloudlab_master_vpc_output" {
  value = data.aws_vpc.cloudlab-master-vpc.arn
}

output "cloudlab_prod_vpc_output" {
  value = data.aws_vpc.cloudlab-prod-vpc.cidr_block
}
