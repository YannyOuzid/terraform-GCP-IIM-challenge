resource "google_storage_bucket" "rendu-bucket" {
  name     = var.bucket_name
  location = "EU"
}

data "archive_file" "archive" {
  type        = "zip"
  output_path = "/tmp/${var.archive_name}.zip"
  source_dir  = "${path.module}/../../src"
}

resource "google_storage_bucket_object" "storage-action" {
  name   = "file.${data.archive_file.archive.output_sha}.zip"
  bucket = google_storage_bucket.rendu-bucket.id
  source = data.archive_file.archive.output_path
}

resource "google_cloudfunctions_function" "function" {
  name        = var.function_name
  runtime     = "nodejs16"

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.rendu-bucket.name
  source_archive_object = google_storage_bucket_object.storage-action.name
  trigger_http          = true
  entry_point           = var.entry_point
}