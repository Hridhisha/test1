resource "azurerm_public_ip" "example" {
    name = "linvm_pubip3" 
    location = azurerm_resource_group.example.location
    resource_group_name = azurerm_resource_group.example.name
    allocation_method = "Static"
}