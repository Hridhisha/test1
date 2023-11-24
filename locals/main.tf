locals {
  comp_name = "kyndryl"
}

resource "azurerm_resource_group" "example" {
  name     = "${local.comp_name}-TF"
  location = "eastus"
}

resource "azurerm_public_ip" "example" {
  name                = "${local.comp_name}-ip"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"

}