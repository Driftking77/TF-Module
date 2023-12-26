resource "azurerm_storage_account" "sa" {
for_each = var.SA

  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "test"
  storage_account_name  = "1234satest1234"
  container_access_type = "private"
  depends_on = [ azurerm_storage_account.sa ]
}