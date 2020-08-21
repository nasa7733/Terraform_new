# This is the provider used to spin up the gcloud instance
provider "google" {
  credentials = file("./creds/creds.json")
  project = "lyrical-shore-262101"
  region  = "us-east1"
 
}


resource "google_compute_instance" "vm-instance" {
  name         = "test01"
  machine_type = "f1-micro"
  zone         = "us-east1-b"
tags = ["nasa", "prod"]


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
