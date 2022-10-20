data "azurerm_resource_group" "rg-existing" {
    name = "rg-terraform"
    }
resource "azurerm_storage_account" "storage" {
    name = "traininglab202325"
    resource_group_name = data.azurerm_resource_group.rg-existing.name
    location            = data.azurerm_resource_group.rg-existing.location
    account_tier        =  "Standard"
    account_replication_type = "GRS"
}


