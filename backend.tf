terraform {
  backend "gcs" {
    bucket  = "nasa-test-bucket"
    prefix  = "prod"
    
  }
}
