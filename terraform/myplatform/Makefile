args = 
tf-command = 
env = 

terraform-init:
	terraform workspace select $(env) || terraform workspace new $(env)
	terraform init
	
terraform-do: terraform-init
	terraform workspace select $(env)
	terraform $(tf-command) -lock-timeout=30m $(args) -var-file=../$(env).tfvars

terraform-output: terraform-init
	terraform workspace select $(env)
	terraform output -json

