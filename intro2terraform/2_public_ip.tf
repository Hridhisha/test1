resource "azurerm_public_ip" "public_ip3" {
    name = "pub_ip3" 
    location = azurerm_resource_group.rg_name3.location
    resource_group_name = azurerm_resource_group.rg_name3.name
    allocation_method = "Static"
}