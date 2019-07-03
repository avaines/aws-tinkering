resource "aws_key_pair" "authentication" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.authentication.public_key_openssh}"
}

resource "tls_private_key" "authentication" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "aws_secretsmanager_secret" "authentication" {
  name        = "ssh/${aws_key_pair.authentication.name}"
  description = "ssh/${aws_key_pair.authentication.name}"


  tags = "${merge(var.tag_map, map(
    "Name", "${aws_key_pair.authentication.name}"
    ))}"

  
}

resource "aws_secretsmanager_secret_version" "authentication" {
  secret_id     = "${aws_secretsmanager_secret.authentication.id}"
  secret_string = "${tls_private_key.authentication.private_key_pem}"
}
