output "id" {
  value = "${aws_instance.web-server.id}"
}

output "arn" {
  value = "${aws_instance.web-server.arn}"
}

output "private_ip" {
  value = "${aws_instance.web-server.private_ip}"
}

output "public_ip" {
  value = "${aws_instance.web-server.public_ip}"
}
