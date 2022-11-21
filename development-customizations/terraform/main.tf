resource "aws_s3_bucket" "test" {
  bucket = "aft-test-bucket-dinesh"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
