data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


resource "aws_instance" "bastion-host" {
  ami = "${data.aws_ami.amazon-linux-2.id}"
  instance_type = "${var.bastion_size}"
  key_name = "${var.bastion_key_pair}"
  vpc_security_group_ids = ["${aws_security_group.bastion_host_sg.id}"]

  tags = "${merge(var.tag_map, map(
    "Name", "${var.hostname}"
    ))}"

}