output "file_name" {
  value       = proxmox_virtual_environment_download_file.template.file_name
  description = "name of download file"
}

output "id" {
  value       = proxmox_virtual_environment_download_file.template.id
  description = "id of download file"
}
