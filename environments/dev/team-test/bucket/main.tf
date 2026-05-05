provider "google" {
  project = "devops-labs-397603"
  region  = "us-central1"
}

resource "google_storage_bucket" "meu_bucket" {
  name          = "nome-unico-do-meu-bucket-1234567"
  location      = "US" 
  force_destroy = true
}
