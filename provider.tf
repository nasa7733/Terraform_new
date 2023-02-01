# This is the provider used to spin up the gcloud instance
provider "google" {
 #credentials = file("creds.json")
 project = "gcpkole"
 region  = "us-central1"
 zone     = "us-central1-c" 
}
