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
