
# tfsec:ignore:aws-s3-enable-versioning tfsec:ignore:aws-s3-enable-bucket-logging
resource "aws_s3_bucket" "examplea" {
  # checkov:skip=CKV_AWS_145: ADD REASON
  # checkov:skip=CKV_AWS_144: ADD REASON
  # checkov:skip=CKV_AWS_21:
  # checkov:skip=CKV_AWS_52:
  # checkov:skip=CKV2_AWS_61:
  # checkov:skip=CKV2_AWS_62:
  # checkov:skip=CKV_AWS_18:v4 legacy
  # checkov:skip=CKV_AWS_19:v4 legacy
  # checkov:skip=CKV2_AWS_37:versioning not required
  # checkov:skip=CKV2_AWS_41:logging not required
  bucket = var.bucket_name
}


resource "aws_s3_bucket_server_side_encryption_configuration" "examplea" {
  bucket = aws_s3_bucket.examplea.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = var.kms_key_arn
    }
  }

}
