resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
}

resource "azurerm_service_plan" "service_plan" {
  name                = var.app_service_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  os_type             = "Linux"
  sku_name            = var.app_service_plan_sku_name
}

resource "azurerm_linux_function_app" "azure_function" {
  name                       = var.function_name
  location                   = var.rg_location
  resource_group_name        = var.rg_name

  service_plan_id            = azurerm_service_plan.service_plan.id
  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "python"
  }

  site_config {
    application_stack {
      python_version = "3.11"
    }
  }
}