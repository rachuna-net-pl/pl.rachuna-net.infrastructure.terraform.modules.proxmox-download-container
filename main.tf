resource "proxmox_virtual_environment_download_file" "template" {
  content_type        = "vztmpl"
  datastore_id        = var.datastore_id
  file_name           = var.file_name
  node_name           = var.node_name
  url                 = var.url
  checksum            = var.checksum != "" ? var.checksum : null
  checksum_algorithm  = var.checksum_algorithm != "" ? var.checksum_algorithm : null
  overwrite           = var.overwrite
  overwrite_unmanaged = var.overwrite_unmanaged
  verify              = var.insecure
}