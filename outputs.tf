output "app_function_name" {
  description = "Name of the Azure Function App"
  value = azurerm_linux_function_app.azure_function.name
}

output "storage_account_name" {
  description = "Name of the Azure Storage Account"
  value = azurerm_storage_account.storage.name
}

output "app_service_plan_name" {
  description = "Name of the App Service"
  value = azurerm_service_plan.service_plan.name
}

output "storage_account_primary_access_key" {
  description = "Primary access key to grant permission to Storage Account"
  value       = azurerm_storage_account.storage.primary_access_key
}

output "storage_account_primary_connection_string" {
  description = "Connection string for Storage Account"
  value       = azurerm_storage_account.storage.primary_connection_string
}

output "possible_outbound_ip_addresses" {
  description = "Possible given ip address for the Azure Function Application"
  value       = azurerm_linux_function_app.azure_function.possible_outbound_ip_addresses
}

output "default_hostname" {
  description = "Expected URL for the Azure Function"
  value       = azurerm_linux_function_app.azure_function.default_hostname
}

output "id" {
  description = "ID of the Azure Function Application"
  value       = azurerm_linux_function_app.azure_function.id
}

output "app_service_plan_id" {
  description = "ID of the Azure Service Plan"
  value       = azurerm_service_plan.service_plan.id
}