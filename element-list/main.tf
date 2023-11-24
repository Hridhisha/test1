variable "rg_name" {
  default = ["rg1","rg2","rg3"]
}

variable "rg_loc" {
  default = ["eastus","westus","eastus2","southindia"]
}

# resource "azurerm_resource_group" "myname" {
#   name = element(var.rg_name,4)   #this will do wrap around
#   location = element(var.rg_loc,6)
# }

resource "azurerm_resource_group" "myname" {
  name = element(var.rg_name,length(var.rg_name)-1)  # this will select the last element of list no matter the size of list
  location = element(var.rg_loc,6)
}