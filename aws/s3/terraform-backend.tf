provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "tfclarolabs" {
  bucket = "tfclarolabs"
  acl    = "private"
  #acl = "public-read"


  versioning {
    enabled = true
  }
}
