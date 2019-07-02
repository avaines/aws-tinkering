resource "aws_s3_bucket" "state" {
  bucket = "${var.aws_account_name}-${var.aws_account_id}-state"
  region = "${var.aws_region}"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    "Name" = "State Bucket"
  }
}



resource "aws_dynamodb_table" "locking" {
  name           = "${var.aws_account_name}-${var.aws_account_id}-lock"
  read_capacity  = "20"
  write_capacity = "20"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = "State Bucket"
  }
}

