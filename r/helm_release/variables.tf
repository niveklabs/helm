variable "atomic" {
  description = "(optional) - If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used"
  type        = bool
  default     = null
}

variable "chart" {
  description = "(required) - Chart name to be installed. A path may be used."
  type        = string
}

variable "cleanup_on_fail" {
  description = "(optional) - Allow deletion of new resources created in this upgrade when upgrade fails"
  type        = bool
  default     = null
}

variable "dependency_update" {
  description = "(optional) - Run helm dependency update before installing the chart"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional) - Add a custom description"
  type        = string
  default     = null
}

variable "devel" {
  description = "(optional) - Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored"
  type        = bool
  default     = null
}

variable "disable_crd_hooks" {
  description = "(optional) - Prevent CRD hooks from, running, but run other hooks.  See helm install --no-crd-hook"
  type        = bool
  default     = null
}

variable "disable_openapi_validation" {
  description = "(optional) - If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema"
  type        = bool
  default     = null
}

variable "disable_webhooks" {
  description = "(optional) - Prevent hooks from running."
  type        = bool
  default     = null
}

variable "force_update" {
  description = "(optional) - Force resource update through delete/recreate if needed."
  type        = bool
  default     = null
}

variable "keyring" {
  description = "(optional) - Location of public keys used for verification. Used only if `verify` is true"
  type        = string
  default     = null
}

variable "max_history" {
  description = "(optional) - Limit the maximum number of revisions saved per release. Use 0 for no limit"
  type        = number
  default     = null
}

variable "name" {
  description = "(required) - Release name."
  type        = string
}

variable "namespace" {
  description = "(optional) - Namespace to install the release into."
  type        = string
  default     = null
}

variable "recreate_pods" {
  description = "(optional) - Perform pods restart during upgrade/rollback"
  type        = bool
  default     = null
}

variable "render_subchart_notes" {
  description = "(optional) - If set, render subchart notes along with the parent"
  type        = bool
  default     = null
}

variable "replace" {
  description = "(optional) - Re-use the given name, even if that name is already used. This is unsafe in production"
  type        = bool
  default     = null
}

variable "repository" {
  description = "(optional) - Repository where to locate the requested chart. If is a URL the chart is installed without installing the repository."
  type        = string
  default     = null
}

variable "repository_ca_file" {
  description = "(optional) - The Repositories CA File"
  type        = string
  default     = null
}

variable "repository_cert_file" {
  description = "(optional) - The repositories cert file"
  type        = string
  default     = null
}

variable "repository_key_file" {
  description = "(optional) - The repositories cert key file"
  type        = string
  default     = null
}

variable "repository_password" {
  description = "(optional) - Password for HTTP basic authentication"
  type        = string
  default     = null
}

variable "repository_username" {
  description = "(optional) - Username for HTTP basic authentication"
  type        = string
  default     = null
}

variable "reset_values" {
  description = "(optional) - When upgrading, reset the values to the ones built into the chart"
  type        = bool
  default     = null
}

variable "reuse_values" {
  description = "(optional) - When upgrading, reuse the last release's values and merge in any overrides. If 'reset_values' is specified, this is ignored"
  type        = bool
  default     = null
}

variable "skip_crds" {
  description = "(optional) - If set, no CRDs will be installed. By default, CRDs are installed if not already present"
  type        = bool
  default     = null
}

variable "timeout" {
  description = "(optional) - Time in seconds to wait for any individual kubernetes operation."
  type        = number
  default     = null
}

variable "values" {
  description = "(optional) - List of values in raw yaml format to pass to helm."
  type        = list(string)
  default     = null
}

variable "verify" {
  description = "(optional) - Verify the package before installing it."
  type        = bool
  default     = null
}

variable "version" {
  description = "(optional) - Specify the exact chart version to install. If this is not specified, the latest version is installed."
  type        = string
  default     = null
}

variable "wait" {
  description = "(optional) - Will wait until all resources are in a ready state before marking the release as successful."
  type        = bool
  default     = null
}

variable "postrender" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      binary_path = string
    }
  ))
  default = []
}

variable "set" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name  = string
      value = string
    }
  ))
  default = []
}

variable "set_sensitive" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name  = string
      value = string
    }
  ))
  default = []
}

variable "set_string" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name  = string
      value = string
    }
  ))
  default = []
}

