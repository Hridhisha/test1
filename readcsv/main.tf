resource "azurerm_resource_group" "myname" {
  name = local.rg[count.index].rgname
  location = local.rg[count.index].location
  count = length(local.rg)
}

locals {
  rg = csvdecode(file("./data.csv"))
}