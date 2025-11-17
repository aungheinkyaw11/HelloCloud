resource "aws_iam_role" "cloudlab-master-terraform-role" {
  name     = "cloudlab-master-terraform-role"
  provider = aws.cloudlab-master

  assume_role_policy = jsonencode(
    {
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Action = "sts:AssumeRole"
          Principal = {
            AWS = "arn:aws:iam::822961100168:root"
          }
        }
      ]
    }
  )

  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}

resource "aws_iam_role" "cloudlab-master-terraform-role-arn" {
  name     = "cloudlab-master-terraform-role-arn"
  provider = aws.cloudlab-master-role-arn

  assume_role_policy = jsonencode(
    {
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Action = "sts:AssumeRole"
          Principal = {
            AWS = "arn:aws:iam::822961100168:root"
          }
        }
      ]
    }
  )

  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}
