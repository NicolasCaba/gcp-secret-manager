resource "google_secret_manager_secret" "secret" {
  secret_id = "${var.secret_name}"

  labels = {
    label = "${var.secret_label}"
  }

  replication {
    automatic = true
  }
}