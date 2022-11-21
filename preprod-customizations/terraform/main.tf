resource "aws_s3_bucket" "test" {
  bucket = "aft-preprod-bucket-dinesh"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
