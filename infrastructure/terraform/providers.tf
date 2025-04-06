terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  credentials = file("credentials.json")
  project     = "constant-cursor-455921-a9"
  region      = "us-central1"
}
