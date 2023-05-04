resource "google_service_account" "user_terra" {
    account_id = var.member_name
    display_name = "New account for the challenge"
}

resource "google_project_iam_member" "secret_manager_binding" {
  project = "${var.project}"
  role = "roles/secretmanager.admin"
  member = "serviceAccount:${google_service_account.user_terra.email}"
}

resource "google_service_account_iam_member" "admin_account_iam" {
    service_account_id = google_service_account.user_terra.name
    role = "roles/iam.serviceAccountUser"
    member = "user:${var.member_mail}"
}