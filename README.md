# azurefunctions-terraform-module

## Deploy an Azure Functions Application

This Terraform module deploys an Azure Functions Application on Linux with everything it requires such as an Azure Storage Account and an Azure Service Plan.

**Runtime:** Python 3.11
**OS:** Linux

## Usage

```hcl
resource "azurerm_resource_group" "resource_group" {
  name     = "azure-functions-test-rg"
  location = "eastus"
}

module "azure_function" {
  source                   = ""
  rg_name                  = azurerm_resource_group.resource_group.name
  rg_location              = azurerm_resource_group.resource_group.location
  storage_account_name     = "functionsappteststorage"
  app_service_name         = "azure-functions-test-service-plan"
  function_name            = "libro-azure-functions"
  storage_account_tier     = "Standard"
  storage_replication_type = "LRS"
  app_service_plan_sku_name = "Y1"
}
```

## Runtime Configuration

The module configures the Azure Function App with the following runtime settings:

| Setting | Value |
|---------|-------|
| `FUNCTIONS_WORKER_RUNTIME` | `python` |
| `LinuxFxVersion` | `PYTHON\|3.11` |

These are applied automatically — no additional configuration is needed.

## Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `rg_name` | Name of the resource group | required |
| `rg_location` | Location of the resource group | required |
| `storage_account_name` | Name of the storage account | required |
| `app_service_name` | Name of the App Service Plan | required |
| `function_name` | Name of the Function App | required |
| `storage_account_tier` | Storage account tier | `Standard` |
| `storage_replication_type` | Storage replication type | `LRS` |
| `app_service_plan_sku_name` | SKU name (e.g. `Y1` for Consumption, `EP1` for Premium) | `Y1` |

## Outputs

| Output | Description |
|--------|-------------|
| `app_function_name` | Name of the Azure Function App |
| `storage_account_name` | Name of the storage account |
| `app_service_plan_name` | Name of the App Service Plan |
| `storage_account_primary_access_key` | Primary access key for the storage account |
| `storage_account_primary_connection_string` | Full connection string for the storage account |
| `possible_outbound_ip_addresses` | Possible outbound IP addresses of the Function App |
| `default_hostname` | Default hostname URL of the Function App |
| `id` | ID of the Azure Function App |
| `app_service_plan_id` | ID of the Azure Service Plan |

## Requisites

- A previously created resource group, it could be created in the same script.

## Next steps

Next features to be included in the module will be:

- Insights enabled for the Function

## Author

Originally created by [Diego Naranjo](https://github.com/diegonaranjo94).

## License

[MIT](LICENSE)

## Contributing

This module welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution.

---
## 📞 Connect with me:
<div>
  <p align="center">
  <a href="https://www.linkedin.com/in/diegonaranjo94/" target="blank">
    <img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="imorange" height="30" width="40" />
    </a>
  <a href="https://www.instagram.com/diegonaranjo.94/" target="blank">
    <img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="imorange" height="30" width="40" />
    </a>
  <a href="https://github.com/diegonaranjo94" target="blank">
    <img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/github.svg" alt="imorange" height="30" width="40" />
    </a>
  </p>
</div>