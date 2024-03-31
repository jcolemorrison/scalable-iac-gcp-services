# Specify the required providers and their versions
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.17.0"
    }
  }
}

# Configure the Google Cloud provider
provider "google" {
  project = var.gcp_project_id
  region  = var.default_region
}

# Get the list of available compute zones
data "google_compute_zones" "available" {}

data "terraform_remote_state" "core" {
  backend = "remote"

  config = {
    organization = var.tfc_organization
    workspaces = {
      name = var.scalable_core_tfc_workspace
    }
  }
}