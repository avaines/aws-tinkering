module "key_pair" {
  source = "../modules/key_pair"

  key_name = "${var.env_name}-key"

  tags = {
    Environment = "${var.env_name}"
    Version = "${var.tag_version}"
    AutoStart = "${var.tag_start_stop_auto}"
    Start-Time = "${var.tag_start_time}"
    Stop-Time = "${var.tag_start_time}"
  }
}

module "bastion_host" {
  source = "../modules/bastion_host"

  hostname = "${var.env_name}-bastion-host"

  size = "${var.bastion_size}"
  #ami = "${var.bastion_ami}"
  key_pair = "${module.key_pair.name}"
  inbound_cidr = ["${var.bastion_inbound_cidr}"]

 tags = {
    Environment = "${var.env_name}"
    Version = "${var.tag_version}"
    AutoStart = "${var.tag_start_stop_auto}"
    Start-Time = "${var.tag_start_time}"
    Stop-Time = "${var.tag_start_time}"
  }

}