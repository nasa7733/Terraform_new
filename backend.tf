terraform {
  backend "gcs" {
    bucket      = "storage-tfstate"
    credentials = "cred.json"
  }
}
