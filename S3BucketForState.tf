resource "aws_s3_bucket" "statebucket-429473037212" {
  bucket = "statebucket-429473037212"
  acl    = "private"
  versioning {
    enabled = false
  }

}