Ten moduł umożliwia pobranie pliku szablonu kontenera LXC (vztmpl) z podanego adresu URL i zapisanie go na wybranym węźle Proxmox VE w określonym datastore. Moduł obsługuje weryfikację sumy kontrolnej pliku, nadpisywanie istniejących plików oraz opcję wyłączenia weryfikacji certyfikatów SSL/TLS.

---
## Zmienne wejściowe

| Nazwa                | Typ     | Opis                                                                                   | Wartość domyślna |
|----------------------|---------|----------------------------------------------------------------------------------------|------------------|
| `datastore_id`       | string  | ID datastore, do którego zostanie pobrany plik                                         | -                |
| `file_name`          | string  | Nazwa pliku do pobrania                                                                | -                |
| `node_name`          | string  | Nazwa węzła Proxmox, na którym plik zostanie zapisany                                  | -                |
| `url`                | string  | URL pliku do pobrania (musi zaczynać się od http:// lub https://)                      | -                |
| `checksum`           | string  | Suma kontrolna pliku do weryfikacji (opcjonalne)                                       | ""               |
| `checksum_algorithm` | string  | Algorytm sumy kontrolnej (md5, sha1, sha224, sha256, sha384, sha512) (opcjonalne)      | ""               |
| `overwrite`          | bool    | Nadpisz plik, jeśli już istnieje                                                       | false            |
| `overwrite_unmanaged`| bool    | Nadpisz plik, jeśli istnieje i nie jest zarządzany przez Terraform                     | false            |
| `insecure`           | bool    | Wyłącz weryfikację certyfikatów SSL/TLS (ustaw na true, aby wyłączyć weryfikację)      | false            |

---
## Zmienne wyjściowe

| Nazwa      | Opis                      |
|------------|---------------------------|
| `file_name`| Nazwa pobranego pliku     |
| `id`       | ID zasobu pobranego pliku |

---
## Przykład użycia

```hcl
module "ubuntu24-10" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/proxmox-download-container.git?ref=v1.0.0"

  datastore_id       = local.storage_name
  node_name          = local.default_node
  file_name          = "ubuntu-24.10.tar.zst"
  url                = "http://download.proxmox.com/images/system/ubuntu-24.10-standard_24.10-1_amd64.tar.zst"
  checksum           = "ac4cb1924de8091eb91226a80453186c"
  checksum_algorithm = "md5"
}

```