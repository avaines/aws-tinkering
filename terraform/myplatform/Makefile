args = 
tf-command = 

terraform-init:
	terraform init
	
terraform-do: terraform-init
	terraform $(tf-command) -lock-timeout=30m $(args)

terraform-output:
	terraform output -json
