data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_security_group" "bastion_host_sg" {
  name = "${var.env_name}_bastion_host_sg"
  description = "${var.env_name} Bastion Host security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.bastion_inbound_cidr}"
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Bastion Host SG"
    Environment = "${var.env_name}"
    Version = "${var.tag_version}"
  }
}

resource "aws_instance" "bastion-host" {
  ami = "${var.bastion_ami}"
  instance_type = "${var.bastion_size}"
  key_name = "${var.bastion_key_pair}"
  vpc_security_group_ids = ["${aws_security_group.bastion_host_sg.id}"]
  

  tags = {
    Name = "${var.env_name} Bastion Host"
    Environment = "${var.env_name}"
    Version = "${var.tag_version}"
    AutoStart = "${var.tag_start_stop_auto}"
    Start-Time = "${var.tag_start_time}"
    Stop-Time = "${var.tag_start_time}"
  }
}