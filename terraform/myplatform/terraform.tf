terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "awstinkering-623152099147-state"
    key     = "test-vm/terraform.tfstate"
    region  = "us-east-1"
  }
}