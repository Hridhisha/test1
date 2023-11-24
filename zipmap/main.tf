resource "azurerm_resource_group" "example" {
  name     = "Linuxvm-TF"
  location = "eastus"
}

resource "azurerm_public_ip" "example" {
  name                = "linuxvm-pub-ip${count.index}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"
  count = 5
}

output "ipname" {
  value = zipmap(azurerm_public_ip.example[*].name , azurerm_public_ip.example[*].ip_address)
}

