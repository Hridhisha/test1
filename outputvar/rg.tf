resource "azurerm_resource_group" "example" {
  name     = "day2rg"
  location = "eastus"
}

resource "azurerm_public_ip" "example" {
  name                = "newip"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"
}

output "ipvalue" {
  value = azurerm_public_ip.example
}