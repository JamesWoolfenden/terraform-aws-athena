resource "aws_athena_database" "examplea" {
  name   = "database_name"
  bucket = aws_s3_bucket.examplea.bucket
  encryption_configuration {
    encryption_option = var.encryption_option
    kms_key           = var.kms_key_arn
  }
  force_destroy = true
}
