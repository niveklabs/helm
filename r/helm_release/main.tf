terraform {
  required_providers {
    helm = ">= 1.0.0"
  }
}

resource "helm_release" "this" {
  atomic                = var.atomic
  chart                 = var.chart
  cleanup_on_fail       = var.cleanup_on_fail
  dependency_update     = var.dependency_update
  devel                 = var.devel
  disable_crd_hooks     = var.disable_crd_hooks
  disable_webhooks      = var.disable_webhooks
  force_update          = var.force_update
  keyring               = var.keyring
  max_history           = var.max_history
  name                  = var.name
  namespace             = var.namespace
  recreate_pods         = var.recreate_pods
  render_subchart_notes = var.render_subchart_notes
  replace               = var.replace
  repository            = var.repository
  repository_ca_file    = var.repository_ca_file
  repository_cert_file  = var.repository_cert_file
  repository_key_file   = var.repository_key_file
  repository_password   = var.repository_password
  repository_username   = var.repository_username
  reset_values          = var.reset_values
  reuse_values          = var.reuse_values
  skip_crds             = var.skip_crds
  timeout               = var.timeout
  values                = var.values
  verify                = var.verify
  version               = var.version
  wait                  = var.wait

  dynamic "set" {
    for_each = var.set
    content {
      name  = set.value["name"]
      value = set.value["value"]
    }
  }

  dynamic "set_sensitive" {
    for_each = var.set_sensitive
    content {
      name  = set_sensitive.value["name"]
      value = set_sensitive.value["value"]
    }
  }

  dynamic "set_string" {
    for_each = var.set_string
    content {
      name  = set_string.value["name"]
      value = set_string.value["value"]
    }
  }

}

