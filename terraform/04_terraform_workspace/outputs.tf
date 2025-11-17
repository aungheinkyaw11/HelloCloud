output "cloudlab_vpc_id" {
    value = aws_vpc.cloudlab_vpc.id  
}

output "cloudlab_azs" {
    value = data.aws_availability_zones.cloudlab_available_azs.names[1]
}