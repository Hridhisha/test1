resource "azurerm_resource_group" "example" {
  for_each = var.rg_det
  name = each.key
  location = each.value
}
