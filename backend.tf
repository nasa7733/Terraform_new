terraform {
  backend "gcs" {
   # project = "lyrical-shore-262101"
    bucket  = "terraform-state"
    google_credentials = "cred.json"
   
  }
}
