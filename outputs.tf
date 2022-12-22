output "secret_id" {
  description = "Id del secret creado"
  value = google_secret_manager_secret.secret.id
}

output "secret_name" {
  description = "Nombre del secret"
  value = google_secret_manager_secret.secret.name
}

