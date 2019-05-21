provider "google" {
  credentials = "${file("ic2labs-3e06e5946c0e.json")}"
  project     = "ic2labs"
  region      = "us-central1-a"
}

resource "google_compute_instance" "default" {
  name = "ic2everything"

  #machine_type = "n1-standard-1"
  machine_type = "g1-small"
  zone         = "us-central1-a"
  tags         = ["ic2everything"]

  boot_disk {
    initialize_params {
      size  = "25"
      type  = "pd-ssd"
      image = "centos-cloud/centos-7"
    }
  }

  metadata_startup_script = "${file("newkernel.sh")}"

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    sshKeys = "devops:${file("gce.pub")} \n irbm:${file("irbm.pub")}"
  }
}

resource "google_compute_firewall" "apache-fwrules" {
  name    = "apache-fwrules"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ic2everything"]
}
