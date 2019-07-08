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

# Web Server
variable instance_size {}
variable inbound_cidr_ssh {
    type = "list"
}

variable inbound_cidr_frontend {
    type = "list"
}
