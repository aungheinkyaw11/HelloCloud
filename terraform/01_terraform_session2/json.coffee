aws sts assume-role \
--role-arn "arn:aws:iam::822961100168:role/cloudlab-master-terraform-role" \
--role-session-name TEST \
--output json \
--profile "cloudlab-prod" | jq
