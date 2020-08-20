terraform {
  backend "gcs" {
    bucket  = "terraform-state"
    prefix  = "prod"
    credentials = "./creds/creds.json"
   
  }
}
