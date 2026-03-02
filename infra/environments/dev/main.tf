module "logs_bucket" {
  source   = "../../../modules/storage"
  name     = "logs-dev-${random_id.suffix.hex}"
  location = "EU"
  log_bucket = module.access_logs_bucket.bucket_name
}

module "access_logs_bucket" {
  source   = "../../../modules/storage"
  name     = "access-logs-dev-${random_id.suffix.hex}"
  location = "EU"
  log_bucket = null
}






resource "random_id" "suffix" {
  byte_length = 2
}

# trigger CI
