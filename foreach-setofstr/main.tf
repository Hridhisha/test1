resource "azurerm_resource_group" "example" {
  for_each = toset(var.rg_name)
  name = each.key
  location = "eastus"
}
