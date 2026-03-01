terraform {
  backend "gcs" {
    bucket  = "tf-state-luka"
    prefix  = "infra"
  }
}
