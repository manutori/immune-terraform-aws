provider "aws" {
  region = "eu-west-1"
}

data "aws_caller_identity" "current" {}

variable "create_object" {
  description = "Si es true, se crea un objeto dentro del bucket"
  type        = bool
  default     = false
}

resource "aws_s3_bucket" "demo" {
  bucket = "mi-bucket-condicional-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_object" "example" {
  count   = var.create_object ? 1 : 0
  bucket  = aws_s3_bucket.demo.bucket
  key     = "ejemplo.txt"
  content = "Hola desde Terraform con condicionales!"
}
