data "azurerm_resource_group" "example" {
  name = "data_rg"
}
data "azurerm_public_ip" "example" {  
  name                = "data_ip"
  resource_group_name = "data_rg"
}
data "azurerm_network_interface" "example" {
  name                = "data_nic"
  resource_group_name = "data_rg"
}
resource "azurerm_windows_virtual_machine" "example" {
  name                = "dataVM"
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    data.azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

output "res_pubip" {
  value = data.azurerm_public_ip.example.ip_address
}

output "rg_fetched" {
  value = data.azurerm_resource_group.example.name
}