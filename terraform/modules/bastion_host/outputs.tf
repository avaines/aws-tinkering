output "id" {
  value = "${aws_instance.bastion-host.id}"
}

output "arn" {
  value = "${aws_instance.bastion-host.arn}"
}

output "private_ip" {
  value = "${aws_instance.bastion-host.private_ip}"
}

output "public_ip" {
  value = "${aws_instance.bastion-host.public_ip}"
}
