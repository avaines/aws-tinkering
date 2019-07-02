env = 

terraform-bootstrap:
	@$(MAKE) -C terraform/bootstrap terraform-init 
	@$(MAKE) -C terraform/bootstrap terraform-do tf-command=apply args="-auto-approve=true -var-file=../$(env).tfvars"
	@$(MAKE) -C terraform/bootstrap terraform-output

terraform-bastion-host:
	@$(MAKE) -C terraform/dev terraform-init 
	@$(MAKE) -C terraform/dev terraform-do tf-command=apply args="-auto-approve=true -var-file=../$(env).tfvars -target='module.bastion-host'"
	@$(MAKE) -C terraform/dev terraform-output

