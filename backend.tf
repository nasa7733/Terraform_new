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
  required_version = "= 0.11.14"

  backend "gcs" {
    project = "lyrical-shore-262101"
    bucket  = "terraform-state"
    credentials = "cred.json"

  }
}
