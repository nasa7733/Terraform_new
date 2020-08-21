terraform {
  backend "gcs" {
    bucket  = "lyrical-shore-262101-sree01"
    prefix  = "prod"
     credentials = "./creds/creds.json"
  }
}
