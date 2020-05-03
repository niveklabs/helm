terraform {
  required_providers {
    helm = ">= 1.0.0"
  }
}

resource "helm_repository" "this" {
  ca_file   = var.ca_file
  cert_file = var.cert_file
  key_file  = var.key_file
  name      = var.name
  password  = var.password
  url       = var.url
  username  = var.username
}

