# azurefunctions-terraform-module

## Deploy an Azure Functions Application

This Terraform module deploys an Azure Functions Application with everything it requires such as an Azure Storage Account and an Azure Service Plan.

## Usage

```hcl
resource "azurerm_resource_group" "resource_group" {
  name     = "azure-functions-test-rg"
  location = "eastus"
}

module "azure_function" {
  source                    = "aminespinoza/azurefunctions/azurerm"
  rg_name                   = azurerm_resource_group.resource_group.name
  rg_location               = azurerm_resource_group.resource_group.location
  storage_account_name      = "functionsappteststorage"
  app_service_name          = "azure-functions-test-service-plan"
  function_name             = "libro-azure-functions"
  storage_account_tier      = "Premium"
  storage_replication_type  = "LRS"
  app_service_plan_sku_tier = "Basic"
  app_service_plan_sku_size = "B2"
}
```

The module supports some outputs to extend the features of the Azure Function Application

|Output name|Description|
|-----------|-----------|
|app_function_name|Name of the Azure Function|
|storage_account_name|Name of the storage account|
|app_service_plan_name|Name of the App Service Plan|
|storage_account_key|Access key to use the storage account|
|storage_account_primary_connection_string|Full connection string to use the storage account|
|possible_outbound_ip_addresses|The expected ip assigned to the Azure Function|
|default_hostname|The final url of the Azure Function App|
|id|ID of the Azure Function App|
|app_service_plan_id|ID of the Azure Service Plan|

## Requisites

- A previously created resource group, it could be created in the same script.

## Next steps

Next features to be included in the module will be:

- Insights enabled for the Function

## Author

Originally created by [Amin Espinoza](http://github.com/aminepsinoza).

## License

[MIT](LICENSE)

## Contributing

This module welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution.
