variable "enabled" {
  description = "Enable or disable bucket"
  type        = bool
  default     = true
}

variable "bucket_name" {
  type = string
  description = "Bucket name"
}

variable "region" {
  type = string
  description = "Bucket Region"
  default = "southamerica-east1"
}
