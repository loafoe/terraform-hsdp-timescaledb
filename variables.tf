variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.medium"
}

variable "volume_size" {
  description = "The volume size to use in GB"
  type        = number
  default     = 50
}

variable "user_groups" {
  description = "User groups to assign to cluster"
  type        = list(string)
}

variable "user" {
  description = "LDAP user to use for connections"
  type        = string
}


variable "agent" {
  description = "Use SSH agent for authentication"
  type        = bool
  default     = false
}

variable "private_key" {
  description = "Private key for SSH access (should not have a passphrase)"
  type        = string
  default     = ""
}

variable "timescaledb_image" {
  description = "The TimescaleDB server image to use"
  type        = string
  default     = "timescaledb:latest"
}

variable "fluent_bit_image" {
  description = "Fluent-bit image"
  type        = string
  default     = "philipssoftware/fluent-bit-out-hsdp:latest"
}

variable "hsdp_shared_key" {
  description = "HSDP Logging shared key"
  type        = string
  default     = ""
}

variable "hsdp_secret_key" {
  description = "HSDP Logging secret key"
  type        = string
  default     = ""
}

variable "hsdp_product_key" {
  description = "HSDP Logging product key"
  type        = string
  default     = ""
}

variable "hsdp_custom_field" {
  description = "Post structured JSON message to HSDP Logging custom field"
  type        = string
  default     = "true"
}

variable "hsdp_region" {
  description = "The HSDP region of the deployment"
  type        = string
  default     = "us-east"
}

variable "hsdp_environment" {
  description = "The HSDP environment of the deployment"
  type        = string
  default     = "client-test"
}

variable "cartel_token" {
  description = "The Cartel token to use for autoscaling"
  type        = string
  default     = ""
}

variable "cartel_secret" {
  description = "The Cartel secret to use for autoscaling"
  type        = string
  default     = ""
}

variable "name_postfix" {
  type        = string
  description = "The postfix string to append to the hostname, prevents namespace clashes"
  default     = ""
}

variable "docker_username" {
  type        = string
  description = "Docker registry username"
  default     = ""
}

variable "docker_password" {
  type        = string
  description = "Docker registry password"
  default     = ""
}
