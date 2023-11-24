    #main.tf
variable "rg_details" {
  default = {
    dev = "eastus"
    prod = "westus"
  }
}
variable "user_inp" {
  description = "Enter env ?"
}
resource "azurerm_resource_group" "myname" {
  name = "rg-kyndryl"
  location = lookup(var.rg_details, var.user_inp, "southindia")
}