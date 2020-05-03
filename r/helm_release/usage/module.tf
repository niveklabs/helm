module "helm_release" {
  source = "./modules/helm/r/helm_release"

  atomic                = null
  chart                 = null
  cleanup_on_fail       = null
  dependency_update     = null
  devel                 = null
  disable_crd_hooks     = null
  disable_webhooks      = null
  force_update          = null
  keyring               = null
  max_history           = null
  name                  = null
  namespace             = null
  recreate_pods         = null
  render_subchart_notes = null
  replace               = null
  repository            = null
  repository_ca_file    = null
  repository_cert_file  = null
  repository_key_file   = null
  repository_password   = null
  repository_username   = null
  reset_values          = null
  reuse_values          = null
  skip_crds             = null
  timeout               = null
  values                = []
  verify                = null
  version               = null
  wait                  = null

  set = [{
    name  = null
    value = null
  }]

  set_sensitive = [{
    name  = null
    value = null
  }]

  set_string = [{
    name  = null
    value = null
  }]
}
