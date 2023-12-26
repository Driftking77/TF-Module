resource "azurerm_bastion_host" "bastion" {
    for_each = var.BASTION
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = "/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Network/virtualNetworks/TodoAPP-VNET/subnets/AzureBastionSubnet"
    public_ip_address_id = "/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Network/publicIPAddresses/PubIP"
  }
}