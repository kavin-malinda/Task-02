//terraform provider for google cloud
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.49.0"
    }
  }
}

provider "google" {

  
project     =  "todoapp-375114"
region      =  "us-central1"
zone        =  "us-central1-c"
credentials =   file("D://Terraformtodo/keys.json")
  # Configuration options
}

//This Terraform configuration creates a Google Compute Engine virtual machine instance
// with the name "instancetodo" in the "us-central1-c" zone
resource "google_compute_instance" "instancetodo" {
  name         = "instancetodo"
  machine_type = "f1-micro"
  zone         =  "us-central1-c"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20220719"
    }
  }

  network_interface {
    network = "default"
    access_config {
        //necessary even empty
    }
  }
}

//Terraform configuration creates a Google Cloud SQL instance with 
//the name "mysql-from-terraform" in the "us-central1" region, using the
// "MYSQL_8_0" version and the "db-f1-micro" tier

resource "google_sql_database_instance" "mysqltodoapp" {
  name = "mysqltodoapp"
  region = "us-central1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
}
delete_protection ="true"
}

resource "google_sql_database" "database-from-tf " {
name = "my-database-from-tf"
instance = google_sql_database_instance.mysqltodoapp.name
}
resource "google_sql_user" "myuser" {
name = "devopstodo"
instance = google_sql_database_instance.mysqltodoapp.name
password = "1995"
}