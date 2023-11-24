variable "your_env" {
  description = "Enter your Working Env as dev/prod ?"
}


resource "azurerm_resource_group" "myname" {
  name = "rgstrg"
  location = "eastus"
}

resource "azurerm_storage_account" "myname" {
  name = "strgtestcndtns"
  resource_group_name = azurerm_resource_group.myname.name
  location = azurerm_resource_group.myname.location
  account_tier = "Standard"
  account_replication_type = var.your_env == "dev" ? "LRS" : "GRS"
}