resource "google_compute_instance" "vm-instance" {
  name         = "test01"
  machine_type = "f1-micro"
  #zone         = "us-west1-a"
 # tags = ["nasa", "prod"]


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

