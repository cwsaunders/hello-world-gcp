variable "project" {
  description = "GCP project to deploy the service"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Region for Cloud Run"
  type        = string
  default     = "us-central1"
}

variable "container_image" {
  description = "Full path to the container image (e.g., gcr.io/my-project/hello-world:latest)"
  type        = string
}

variable "credentials" {
  description = "GCP service account credentials in JSON format"
  type        = string
  sensitive   = true
}
