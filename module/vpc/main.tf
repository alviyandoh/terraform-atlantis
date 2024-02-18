terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.16.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "default" {
  name                    = var.name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  network       = google_compute_network.default.id
}
