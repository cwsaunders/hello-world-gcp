output "cloud_run_url" {
  description = "The URL at which the Cloud Run service is available"
  value       = google_cloud_run_service.default.status[0].url
}