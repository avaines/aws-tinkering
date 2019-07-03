output "name" {
  value = "${aws_instance.bastion-host.name}"
}

output "private_ip" {
  value = "${aws_instance.bastion-host.private_ip}"
}