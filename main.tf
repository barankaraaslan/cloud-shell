terraform {
  required_providers {
    dockerhub = {
      source = "BarnabyShearer/dockerhub"
      version = "0.0.8"
    }
  }
}

provider "dockerhub" {
}

resource "dockerhub_repository" "main" {
  name = "cloud-shell"
  namespace = "barankaraaslan"
  description = "cloud-shell is my development enviroment for working with cloud providers"
  full_description = file("README.md")
  private = "true"
}