resource "aws_s3_bucket" "my_bucket" {
  bucket = "sukas-my-new-bucket"   # must be globally unique

  tags = {
    Name        = "MyNewBucket"
    Environment = "dev"
  }
}

# resource "aws_s3_bucket_acl" "my_bucket_acl" {
#   bucket = aws_s3_bucket.my_bucket.id
#   acl    = "private"
# }

resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}