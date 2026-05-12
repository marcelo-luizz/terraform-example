resource "google_storage_bucket" "this" {
  count         = var.enabled ? 1 : 0
  name          = var.bucket_name
  location      = var.region
  force_destroy = true
}
