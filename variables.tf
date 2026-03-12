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

variable "app_service_plan_sku_name" {
  type        = string
  description = "SKU name of the App Service Plan (e.g. Y1 for Consumption, EP1 for Premium, S1 for Standard)"
  default     = "Y1"
}

variable "function_name" {
  type        = string
  description = "Function App Name"
}