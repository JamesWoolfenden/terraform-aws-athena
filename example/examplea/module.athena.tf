module "athena" {
  source      = "../../"
  common_tags = var.common_tags
  kms_key_arn = var.kms_key_arn
  bucket_name = "whoseideaisthisanyway"
}
