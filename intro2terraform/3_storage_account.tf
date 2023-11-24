resource "azurerm_storage_account" "storage_accnt1" {
    name = "storageacnnt1" 
    resource_group_name = azurerm_resource_group.rg_name3.name
    location = azurerm_resource_group.rg_name3.location
    account_replication_type = "GRS"
    account_tier = "Standard"
}