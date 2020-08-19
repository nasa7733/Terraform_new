terraform {
  backend "gcs" {
    bucket      = "storage-tfstate"
    credentials = "cred.json"
    #credentials = file("cred.json")
  }
}
