variable "name" {
  type = string
}

variable "location" {
  type = string
}


variable "log_bucket" {
  type        = string
  description = "Bucket name to store access logs"
}
