terraform {
  backend "gcs" {
    bucket  = "terraform-state"
    prefix  = "prod"
    google_credentials = "./creds/creds.json"
   
   
  }
}
