resource "azurerm_lb" "lb" {
    for_each = var.LB
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.location

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = "/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Network/publicIPAddresses/PubIP"
  }
}