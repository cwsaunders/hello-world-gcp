resource "google_cloud_run_service" "default" {
  name     = "hello-world"
  location = var.region

  template {
    spec {
      containers {
        image = var.container_image
        ports {
          container_port = 8080
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# Allow HTTP
resource "google_cloud_run_service_iam_member" "noAuth" {
  location = google_cloud_run_service.default.location
  project  = var.project
  service  = google_cloud_run_service.default.name

  role   = "roles/run.invoker"
  member = "allUsers"
}