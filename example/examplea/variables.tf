variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "kms_key_arn" {
  type = string
}
