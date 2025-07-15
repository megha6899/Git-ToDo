rg_map = {
  rg1 = {
    name     = "rg-dev-ibm"
    location = "canada central"
  }
}

storage_map = {
  storage1 = {
    name                     = "ibmstorageacc123456789"
    location                 = "canada central"
    resource_group_name      = "rg-dev-ibm"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_map = {
  vnet1 = {
    name                = "ibm-dev-vnet"
    location            = "canada central"
    resource_group_name = "rg-dev-ibm"
    address_space       = ["10.0.0.0/16"]
    # dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnet_map = {
  subnet1 = {
    name                 = "ibm-dev-subnet1"
    resource_group_name  = "rg-dev-ibm"
    virtual_network_name = "ibm-dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "ibm-dev-subnet2"
    resource_group_name  = "rg-dev-ibm"
    virtual_network_name = "ibm-dev-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }  
  }