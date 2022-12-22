resource "google_secret_manager_secret_iam_binding" "secret_iam_service_account" {
  project = google_secret_manager_secret.secret.project
  secret_id = google_secret_manager_secret.secret.secret_id
  role = "roles/secretmanager.secretAccessor"
  members = [ "serviceAccount:${data.google_service_account.my_account.email}" ]
}