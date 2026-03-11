variable "rg_name" {
  type        = string
  description = "Name of the resource group"
}

variable "rg_location" {
  type        = string
  description = "Location of the resource group"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "storage_account_tier" {
  type        = string
  description = "Storage account tier"
  default     = "Standard"
}

variable "storage_replication_type" {
  type        = string
  description = "Storage account replication type"
  default     = "LRS"
}

variable "app_service_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "app_service_plan_sku_tier" {
  type        = string
  description = "SKU tier of the App Service Plan"
  default     = "Standard"
}

variable "app_service_plan_sku_size" {
  type        = string
  description = "SKU size of the App Service Plan"
  default     = "S1"
}

variable "function_name" {
  type        = string
  description = "Function App Name"
}