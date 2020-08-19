terraform {
  backend "gcs" {
   # project = "lyrical-shore-262101"
    bucket  = "terraform-state"
    GOOGLE_BACKEND_CREDENTIALS = "cred.json"
  }
}
