
RG = {
  rg1 = {
    name     = "TodoAPP-RG"
    location = "eastus"
  }
}

VNET = {
  vnet1 = {

    name                = "TodoAPP-VNET"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
    address_space       = ["10.0.0.0/16"]
  }
}


SUBNET = {
  subnet3 = {
    name                 = "FrontendSubnet"
    resource_group_name  = "TodoAPP-RG"
    virtual_network_name = "TodoAPP-VNET"
    address_prefixes     = ["10.0.1.0/25"]
  }
  subnet2 = {
    name                 = "BackendendSubnet"
    resource_group_name  = "TodoAPP-RG"
    virtual_network_name = "TodoAPP-VNET"
    address_prefixes     = ["10.0.3.0/25"]
  }
  subnet1 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "TodoAPP-RG"
    virtual_network_name = "TodoAPP-VNET"
    address_prefixes     = ["10.0.2.0/25"]
  }
}


NIC = {
  nic1 = {
    name                = "NIC1"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }
  nic2 = {
    name                = "NIC2"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }

}

PUBLICIP = {
  publicip1 = {
    name                = "PubIP"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }
  publicip2 = {
    name                = "PubIP1"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }
}

VM = {
  vm1 = {
    name                            = "Frontendvm"
    resource_group_name             = "TodoAPP-RG"
    location                        = "eastus"
    size                            = "Standard_F2"
    admin_username                  = "durgesh"
    admin_password                  = "durgesh@123@"
    disable_password_authentication = false
    network_interface_ids           = ["/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Network/networkInterfaces/NIC1"]

  }
  vm2 = {
    name                            = "backendvm"
    resource_group_name             = "TodoAPP-RG"
    location                        = "eastus"
    size                            = "Standard_F2"
    admin_username                  = "durgesh"
    admin_password                  = "durgesh@123@"
    disable_password_authentication = false
    network_interface_ids           = ["/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Network/networkInterfaces/NIC2"]

  }
}

MYSQL = {
  sql1 = {
    name                         = "durgeshserver"
    resource_group_name          = "TodoAPP-RG"
    location                     = "central india"
    version                      = "12.0"
    administrator_login          = "durgesh123"
    administrator_login_password = "durgesh@123@"
  }
}

MYSQLDB = {
  db1 = {
    name      = "mydatabase1"
    server_id = "/subscriptions/8c11d574-047c-4af6-9ffc-c342706850a0/resourceGroups/TodoAPP-RG/providers/Microsoft.Sql/servers/durgeshserver"
  }
}

NSG = {
  nsg1 = {
    name                = "NSG12"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }
}

BASTION = {
  bastion1 = {
    name                = "bastion123"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }
}

SA = {
  sa1 = {
    name                = "1234satest1234"
    resource_group_name = "TodoAPP-RG"
    location            = "central india"
  }
}





LB = {
  lb1 = {
    name                = "maingate1"
    location            = "eastus"
    resource_group_name = "TodoAPP-RG"
  }
}










