module "key_pair" {
  source = "../modules/key_pair"

  key_name = "${var.env_name}-key"

  tag_map = {
    Environment = "${var.env_name}"
    Version = "${var.tag_version}"
    AutoStart = "${var.tag_start_stop_auto}"
    Start-Time = "${var.tag_start_time}"
    Stop-Time = "${var.tag_start_time}"
  }
}

module "web_server" {
  source = "../modules/web_server"

  hostname = "${var.env_name}-web-server"

  size = "${var.instance_size}"
  key_pair = "${module.key_pair.name}"
  inbound_cidr_ssh = ["${var.inbound_cidr_ssh}"]
  inbound_cidr_frontend = ["${var.inbound_cidr_frontend}"]

 tag_map = {
    Environment = "${var.env_name}"
    Version = "${var.tag_version}"
    AutoStart = "${var.tag_start_stop_auto}"
    Start-Time = "${var.tag_start_time}"
    Stop-Time = "${var.tag_start_time}"
  }

}