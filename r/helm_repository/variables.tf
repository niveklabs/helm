variable "ca_file" {
  description = "(optional) - Verify certificates of HTTPS-enabled servers using this CA bundle"
  type        = string
  default     = null
}

variable "cert_file" {
  description = "(optional) - Identify HTTPS client using this SSL certificate file"
  type        = string
  default     = null
}

variable "key_file" {
  description = "(optional) - Identify HTTPS client using this SSL key file"
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Chart repository name"
  type        = string
}

variable "password" {
  description = "(optional) - Password for HTTP basic authentication"
  type        = string
  default     = null
}

variable "url" {
  description = "(required) - Chart repository URL"
  type        = string
}

variable "username" {
  description = "(optional) - Username for HTTP basic authentication"
  type        = string
  default     = null
}

