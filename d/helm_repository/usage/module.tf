module "helm_repository" {
  source = "./modules/helm/d/helm_repository"

  ca_file   = null
  cert_file = null
  key_file  = null
  name      = null
  password  = null
  url       = null
  username  = null
}
