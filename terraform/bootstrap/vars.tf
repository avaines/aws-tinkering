variable "env_name" {
    description = "Name of this environment; dev/stage/prod etc."
}

variable "aws_account_id" { description = "The region in which all requested AWS resources will be created." }

variable "aws_account_name" { description = "The region in which all requested AWS resources will be created." }

variable "aws_region" { description = "The region in which all requested AWS resources will be created." }


# Tags
variable tag_owner {}
variable tag_version {}
variable tag_start_stop_auto {}
variable tag_start_time {}
variable tag_end_time {}









