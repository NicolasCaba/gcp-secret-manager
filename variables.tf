/****************************************************/
# Configuración Google Cloud
/****************************************************/
variable "GOOGLE_PROJECT_ID" {
  type        = string
  description = "GCP project id"
}

variable "GOOGLE_REGION" {
  type        = string
  description = "GCP region por defecto"
}

/****************************************************/
# variables secret
/****************************************************/
variable "secret_name" {
  type = string
  description = "Nombre del secret"
}

variable "secret_label" {
  type = string
  description = "Label del secret"
}
