resource "azurerm_mssql_server" "mysql" {

  for_each = var.MYSQL
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
}