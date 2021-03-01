resource "aws_s3_bucket" "examplea" {
  #checkov:skip=CKV_AWS_21:
  #checkov:skip=CKV_AWS_52:
  #checkov:skip=CKV_AWS_18:
  bucket = var.bucket_name

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
