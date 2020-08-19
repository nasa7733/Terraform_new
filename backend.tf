terraform {
  backend "gcs" {
   # project = "lyrical-shore-262101"
    bucket  = "terraform-state"
    credentials = "./creds/creds.json"
   
  }
}
