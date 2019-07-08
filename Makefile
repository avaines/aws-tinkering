env = 

terraform-build:
	@$(MAKE) -C terraform/myplatform terraform-init 
	@$(MAKE) -C terraform/myplatform terraform-do tf-command=apply args="-auto-approve=true -var-file=../$(env).tfvars"


