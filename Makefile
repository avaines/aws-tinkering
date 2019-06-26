env = 

terraform-bootstrap:
	@$(MAKE) -C terraform/bootstrap terraform-init 
	@$(MAKE) -C terraform/bootstrap terraform-do tf-command=apply args="-auto-approve=true -var-file=../$(env).tfvars"
	@$(MAKE) -C terraform/bootstrap terraform-output

