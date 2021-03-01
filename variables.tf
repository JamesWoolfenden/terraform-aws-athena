variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "kms_key_arn" {
  type = string
}

variable "workgroup_name" {
  type    = string
  default = "examplea"
}

variable "encryption_option" {
  type        = string
  description = "(optional) describe your variable"
  default     = "SSE_KMS"
}

variable "bucket_name" {

}
