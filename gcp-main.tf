resource "google_app_engine_application" "app" {
  project     = "labdevops-lcesar"
  location_id = "us-west1"
}

resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta

  location = "us-west1"
  repository_id = "labdevops"
  description = "Imagens Docker"
  format = "DOCKER"
}