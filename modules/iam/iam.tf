resource "google_service_account" "user-terra" {
    account_id = var.member_name
    display_name = "New account for the challenge"
}

resource "google_project_iam_member" "secret-manager-binding" {
  project = "${var.project}"
  role = "roles/secretmanager.admin"
  member = "serviceAccount:${google_service_account.user-terra.email}"
}

resource "google_service_account_iam_member" "admin-account-iam" {
    service_account_id = google_service_account.user-terra.name
    role = "roles/iam.serviceAccountUser"
    member = "user:${var.member_mail}"
}