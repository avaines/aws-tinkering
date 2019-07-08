data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*x86_64-*"]
  }

  filter {
       name   = "architecture"
       values = ["x86_64"]
  }
}


resource "aws_instance" "bastion-host" {
  ami = "${data.aws_ami.amazon-linux-2.id}"
  instance_type = "${var.size}"
  key_name = "${var.key_pair}"
  vpc_security_group_ids = ["${aws_security_group.host_access.id}"]

  tags = "${merge(var.tag_map, map(
    "Name", "${var.hostname}"
    ))}"

}