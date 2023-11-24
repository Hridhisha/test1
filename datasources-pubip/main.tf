data "azurerm_resource_group" "myname" {
  name = "data_rg"
}
resource "azurerm_public_ip" "myname" {
  name = "data_ip"
  location = data.azurerm_resource_group.myname.location
  resource_group_name = data.azurerm_resource_group.myname.name
  allocation_method = "Static"
} 

output "res_pubip" {
  value = azurerm_public_ip.myname.ip_address
}

output "rg_fetched" {
  value = data.azurerm_resource_group.myname.name
}