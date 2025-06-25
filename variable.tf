variable "datastore_id" {
  description = "The ID of the datastore to download the file to"
  type        = string
}

variable "file_name" {
  description = "The name of the file to download"
  type        = string
}

variable "node_name" {
  description = "The name of the node to download the file to"
  type        = string
}

variable "url" {
  description = "URL pliku do pobrania (musi zaczynać się od http:// lub https://)"
  type        = string

  validation {
    condition     = can(regex("^https?://.*", var.url))
    error_message = "URL musi zaczynać się od http:// lub https://."
  }
}

variable "checksum" {
  description = "The algorithm used to calculate the checksum"
  type        = string
  default     = ""
}

variable "checksum_algorithm" {
  description = "The checksum of the file"
  default     = ""
  type        = string

  validation {
    condition = contains([
      "",
      "md5",
      "sha1",
      "sha224",
      "sha256",
      "sha384",
      "sha512"],
      var.checksum_algorithm
    )
    error_message = "Checksum algorithm must be one of md5, sha1, sha224, sha256, sha384, sha512"
  }
}

variable "overwrite" {
  description = "overwrite the file if it already exists"
  default     = false
  type        = bool
}

variable "overwrite_unmanaged" {
  description = "overwrite the file if it already exists and is not managed by Terraform"
  default     = false
  type        = bool
}

variable "insecure" {
  description = "SSL/TLS certificates will be verified"
  default     = false
  type        = bool
}

