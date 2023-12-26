resource "azurerm_network_interface" "nic" {
  for_each            = var.NIC
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

 

 ip_configuration {
    name                          = "Frontend"
    subnet_id                     = "/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Network/virtualNetworks/TodoAPP-VNET/subnets/FrontendSubnet"
    private_ip_address_allocation = "Dynamic"
  }
  
}