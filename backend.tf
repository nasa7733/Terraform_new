terraform {
  backend "gcs" {
    bucket  = "rohit-46"
    prefix  = "terraform/state"
  }
}
