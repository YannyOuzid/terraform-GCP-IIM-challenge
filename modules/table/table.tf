resource "google_bigquery_dataset" "rendu_dataset" {
  dataset_id                  = var.data_set
  friendly_name               = "rendu"
  location                    = "EU"
}

resource "google_bigquery_table" "rendu_table" {
  dataset_id = google_bigquery_dataset.rendu_dataset.dataset_id
  table_id   = var.data_table

  schema = file("${path.module}/schema.json")
}