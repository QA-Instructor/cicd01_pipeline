variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_02_3a9d9b31d0aa-11374-29620"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "victoria-vpc"
  auto_create_subnetworks = true 
}
