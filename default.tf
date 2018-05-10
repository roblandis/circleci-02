provider "aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "$BUCKET"
  acl    = "private"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
