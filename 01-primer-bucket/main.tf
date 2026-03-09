provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "mi-bucket-demo-terraform-tu-nombre" # Cambia esto si quieres
}
