provider "aws" {
  region = "eu-west-1"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "demo" {
  bucket = "mi-bucket-${data.aws_caller_identity.current.account_id}"
}
