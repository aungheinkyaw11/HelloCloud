Account 1
hellocloud-ahk-aws-master-terraform-role
arn:aws:iam::822961100168:role/hellocloud-ahk-aws-master-terraform-role

Account 2
hellocloud-ahk-aws-dev-terraform-role
arn:aws:iam::254292659128:role/hellocloud-ahk-aws-dev-terraform-role

Account 3
hellocloud-ahk-aws-prod-terraform-role
arn:aws:iam::595226768173:role/hellocloud-ahk-aws-prod-terraform-role


terraform workspace list
terraform workspace new cloudlab-master
terraform workspace list # verify

terraform workspace new cloudlab-prod
terraform workspace new cloudlab-dev



terraform workspace selct cloudlab-master
terraform init
terraform plan -var-file="cloudlab-master.tfvars"
terraform apply -var-file="cloudlab-master.tfvars"

terraform workspace selct cloudlab-dev
terraform init
terraform plan -var-file="cloudlab-dev.tfvars" 
terraform apply -var-file="cloudlab-dev.tfvars" 

terraform workspace seelct cloudlab-prod
terraform init
terraform plan -var-file="cloudlab-prod.tfvars" 
terraform apply -var-file="cloudlab-prod.tfvars" 