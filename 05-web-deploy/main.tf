provider "aws" {
  region = "eu-west-1"
}

resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}

resource "aws_s3_bucket" "web" {
  bucket        = "demo-web-${random_integer.suffix.result}"
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "public_block" {
  bucket = aws_s3_bucket.web.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_access" {
  bucket = aws_s3_bucket.web.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = ["s3:GetObject"]
        Resource  = "${aws_s3_bucket.web.arn}/*"
      }
    ]
  })
  depends_on = [aws_s3_bucket_public_access_block.public_block]
}

resource "aws_s3_bucket_website_configuration" "web_config" {
  bucket = aws_s3_bucket.web.id
  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.web.bucket
  key          = "index.html"
  source       = "${path.module}/web_content/index.html"
  etag         = filemd5("${path.module}/web_content/index.html")
  content_type = "text/html"
}

output "website_url" {
  value       = "http://${aws_s3_bucket_website_configuration.web_config.website_endpoint}"
  description = "URL para acceder al sitio web estático en S3"
}
