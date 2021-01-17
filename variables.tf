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
