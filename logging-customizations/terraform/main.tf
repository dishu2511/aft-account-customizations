resource "aws_s3_bucket" "test" {
  bucket = "aft-logging-bucket-dinesh"

  tags = {
    Name        = "My bucket"
    Environment = "logging"
  }
}
