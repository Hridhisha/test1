resource "azurerm_resource_group" "example" {
  name     = var.rg_name[count.index]
  location = var.def_loc
  count = length(var.rg_name)
}

# resource "azurerm_public_ip" "example" {
#   name                = "newip"
#   location            = var.def_loc
#   resource_group_name = var.rg_det.rg_name2
#   allocation_method   = "Static"
# }

# output "ipvalueipaddress" {
#   value = azurerm_public_ip.example.ip_address
# }


# output "ipvalueloc" {
#   value = azurerm_public_ip.example.location
# }

# output "ipvaluergname" {
#   value = azurerm_public_ip.example.resource_group_name
# }