module "bastion_host" {
    source = "../modules/bastion_host"

    env_name = "${var.env_name}"
    aws_region = "${var.aws_region}"

    tag_owner = "${var.tag_owner}"
    tag_version = "${var.tag_version}"
    tag_start_stop_auto = "${var.tag_start_stop_auto}"
    tag_start_time = "${var.tag_start_time}"
    tag_end_time = "${var.tag_end_time}"

    bastion_size = "${var.bastion_size}"
    bastion_ami = "${var.bastion_ami}"
    bastion_key_pair = "${var.bastion_key_pair}"
    bastion_inbound_cidr = "${var.bastion_inbound_cidr}"

}