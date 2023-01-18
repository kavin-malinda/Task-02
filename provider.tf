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
