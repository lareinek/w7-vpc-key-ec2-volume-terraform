resource "aws_s3_bucket" "s3" {
  bucket = "utc-app-s3tkt"

  tags = {
    Name        = "My s3 bucket"
    Environment = "Dev"
  }
}