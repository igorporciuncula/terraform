provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "tfepamlabs" {
  bucket = "tfepamlabs"
  acl    = "private"
  #acl = "public-read"


  versioning {
    enabled = true
  }
}
