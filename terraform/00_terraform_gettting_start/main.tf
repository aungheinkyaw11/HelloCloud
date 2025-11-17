data "aws_vpc" "cloudlab-master-vpc" {
  provider = aws.cloudlab-master
}

data "aws_vpc" "cloudlab-prod-vpc" {
  provider = aws.cloudlab-prod
} 