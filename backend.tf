terraform {
  backend "gcs" {
    bucket  = "lyrical-shore-262101-pipeline"
    prefix  = "prod"
     credentials = "./creds/creds.json"
  }
}
