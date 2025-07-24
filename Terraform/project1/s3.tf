resource "aws_s3_bucket" "demo_iam_ec2_bucket_001_athira" {
  bucket = "demo-iam-ec2-bucket-001-athira"

  tags = {
    Name        = "demo_iam_ec2_bucket_001_athira"
    Environment = "demo"
  }
}