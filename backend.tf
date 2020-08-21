terraform {
  backend "gcs" {
    bucket  = "lyrical-shore-262101-pipeline"
     credentials = "./creds/creds.json"
  }
}
