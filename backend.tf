terraform {
  backend "gcs" {
    bucket      = "storage-tfstate"
    credentials = "./creds/cred.json"
    #credentials = file("cred.json")
  }
}
