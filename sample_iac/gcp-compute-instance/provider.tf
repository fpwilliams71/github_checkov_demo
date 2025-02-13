terraform {
  required_version = ">= 0.12"
}

# Specify the provider (GCP, AWS, Azure)
provider "google" {
credentials = "${file("fpw-credentials.json")}"
project = var.gcp_project
region = var.gcp_region
zone    = var.gcp_zone
}