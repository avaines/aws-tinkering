env = 

terraform-build:
	@$(MAKE) -C terraform/myplatform terraform-init env="$(env)
	@$(MAKE) -C terraform/myplatform terraform-do tf-command=apply args="-auto-approve=true" env="$(env)"


