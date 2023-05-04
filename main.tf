terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  version = "4.63.1"
  project = var.project
  region  = var.region
  zone    = var.zone
}

module "iam" {
  source = "./modules/iam"
}

module "storage" {
    source = "./modules/storage"
}

module "table" {
    depends_on = [module.storage]
    source = "./modules/table"
}

module "dashboard" {
    depends_on = [module.iam, module.storage, module.table]
    source = "./modules/dashboard"
}