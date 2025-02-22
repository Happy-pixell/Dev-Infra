


    


resource "aws_s3_bucket" "happiness123" {
  bucket = "happiness123"  # Ensure this bucket name is globally unique

  tags = {
    Name        = "happiness123"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_versioning" "happiness123" {
  bucket = aws_s3_bucket.happiness123.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "happiness123" {
  bucket = aws_s3_bucket.happiness123.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
