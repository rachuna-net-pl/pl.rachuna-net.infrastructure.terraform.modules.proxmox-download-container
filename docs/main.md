## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | ~> 0.76.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | ~> 0.76.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_download_file.template](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_download_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_checksum"></a> [checksum](#input\_checksum) | The algorithm used to calculate the checksum | `string` | `""` | no |
| <a name="input_checksum_algorithm"></a> [checksum\_algorithm](#input\_checksum\_algorithm) | The checksum of the file | `string` | `""` | no |
| <a name="input_datastore_id"></a> [datastore\_id](#input\_datastore\_id) | The ID of the datastore to download the file to | `string` | n/a | yes |
| <a name="input_file_name"></a> [file\_name](#input\_file\_name) | The name of the file to download | `string` | n/a | yes |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | SSL/TLS certificates will be verified | `bool` | `false` | no |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | The name of the node to download the file to | `string` | n/a | yes |
| <a name="input_overwrite"></a> [overwrite](#input\_overwrite) | overwrite the file if it already exists | `bool` | `false` | no |
| <a name="input_overwrite_unmanaged"></a> [overwrite\_unmanaged](#input\_overwrite\_unmanaged) | overwrite the file if it already exists and is not managed by Terraform | `bool` | `false` | no |
| <a name="input_url"></a> [url](#input\_url) | URL pliku do pobrania (musi zaczynać się od http:// lub https://) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_file_name"></a> [file\_name](#output\_file\_name) | name of download file |
| <a name="output_id"></a> [id](#output\_id) | id of download file |
