terraform {
  backend "gcs" {
    bucket  = "tf-state-stage444"
    prefix  = "infra"
  }
}
