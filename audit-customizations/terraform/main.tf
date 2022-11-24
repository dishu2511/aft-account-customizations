resource "aws_s3_bucket" "test" {
  bucket = "aft-audit-bucket-dinesh"

  tags = {
    Name        = "My bucket"
    Environment = "audit"
  }
}
