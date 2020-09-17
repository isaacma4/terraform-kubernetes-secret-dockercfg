variable "name" {
  type        = string
  description = "The name of the secret as it will appear in the namespace"
}

variable "namespace" {
  type        = string
  description = "The namespace to deploy kubernetes secret to"
  default     = "default"
}

variable "registry_url" {
  type        = string
  description = "The url to the Docker registry to authenticate against to images from"
  default     = "https://index.docker.io/v1/"
}

variable "username" {
  type        = string
  description = "The username to authenticate with Docker registry"
  default     = null
}

variable "password" {
  type        = string
  description = "The password to authenticate with Docker registry"
  default     = null
}

variable "auth_token" {
  type        = string
  description = "The auth token to authenticate with Docker registry (used instead of username and password)"
  default     = null
}