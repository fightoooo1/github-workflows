resource "google_storage_bucket" "bucket" {
  name     = var.name
  location = var.location

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  dynamic "logging" {
    for_each = var.log_bucket == null ? [] : [1]

    content {
      log_bucket = var.log_bucket
    }
  }
}
