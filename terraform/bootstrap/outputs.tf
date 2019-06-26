
output "state_bucket_name" {
  value = "${aws_s3_bucket.state.bucket}"
}

output "state_locking_db_name" {
  value = "${aws_dynamodb_table.locking.name}"
}