module "logs_bucket" {
  source   = "../../../modules/storage"
  name     = "logs-stage-${random_id.suffix.hex}"
  location = "EU"
}

resource "random_id" "suffix" {
  byte_length = 2
}
