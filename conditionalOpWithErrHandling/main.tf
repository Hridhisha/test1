variable "your_env" {
  description = "Enter your Working Env as dev/prod ?"
  validation {
    condition = upper(var.your_env) == "DEV" || lower(var.your_env) == "prod"
    error_message = "Unauthorised user. Only Dev and prod team allowed to create storage account"
  }
}


resource "azurerm_resource_group" "myname" {
  name = "rgstrg"
  location = "eastus"
}

resource "azurerm_storage_account" "myname" {
  name = "strgtesdemo1"
  resource_group_name = azurerm_resource_group.myname.name
  location = azurerm_resource_group.myname.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  count = upper(var.your_env) == upper("dev") ? 1 : 0
}

resource "azurerm_storage_account" "myname1" {
  name = "strgtesdemo1"
  resource_group_name = azurerm_resource_group.myname.name
  location = azurerm_resource_group.myname.location
  account_tier = "Standard"
  account_replication_type = "GRS"
  count = lower(var.your_env) == lower("prod") ? 1 : 0
}