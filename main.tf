ECHO is on.

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.44.0"
    }
  }
}
provider "google" {
  credentials = file("F:/Jobs/Codimite/optimistic-name-375100-40ceb9c0e31f.json")
  project     = "optimistic-name-375100"
  region      = "asia-southeast1"
}


resource "google_compute_instance" "instancetodo" {
  name         = "instancetodo"
  machine_type = "f1-micro"
  zone         = "asia-southeast1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }


resource "google_sql_database_instance" "instancetodo" {
name = "instancetodo-db-instance"
region = "asia-southeast1"
database_version = "POSTGRES_11"
storage_auto_increment_factor = 1
}