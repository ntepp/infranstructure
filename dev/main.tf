terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Create Artifact Registry Repository
resource "google_artifact_registry_repository" "docker_images" {
  location = var.region
  repository_id = "docker-images"
  description   = "Docker Artifact Registry repository"
  format = "DOCKER" # Supported formats: DOCKER, MAVEN, NPM, PYTHON, etc.
}

# Output the repository URL (usable for docker push commands)
output "docker_registry_url" {
  value = format("gcr.io/%s/%s", var.project_id, google_artifact_registry_repository.docker_images.repository_id)
  description = "URL of the Docker image repository in Artifact Registry"
}