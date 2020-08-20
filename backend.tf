terraform {
  backend "gcs" {
    bucket  = "nasa-test-bucket"
    prefix  = "prod"
     credentials = "./creds/creds.json"
  }
}
