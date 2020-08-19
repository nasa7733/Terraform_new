######
#terraform {
#  backend "gcs" {
#    bucket      = "storage-tfstate"
#    credentials = "cred.json"
#    #credentials = file("cred.json")
#  }
#}
###########

terraform {
  backend "gcs" {
    project = "lyrical-shore-262101"
    bucket  = "terraform-state"
    credentials = "cred.json"

  }
}
