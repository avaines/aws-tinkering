variable "env_name" {
    description = "Name of this environment; dev/stage/prod etc."
}
variable "aws_account_id" {}

variable "aws_account_name" {}

variable "aws_region" { description = "The region in which all requested AWS resources will be created." }


# Tags
variable tag_owner {}
variable tag_version {}
variable tag_start_stop_auto {}
variable tag_start_time {}
variable tag_end_time {}

#Bastion Host
variable bastion_size {}
variable bastion_ami {}
variable bastion_key_pair {}
variable bastion_inbound_cidr {}
