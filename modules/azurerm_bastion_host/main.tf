# data "azurerm_subnet" "subnet" {
#   name = "AzureBastionSubnet"
#   virtual_network_name = "ibm-vnet"
#   resource_group_name = "rg-dev-ibm"
  
# }

# resource "azurerm_public_ip" "ibmpip" {
#   name                = "examplepip"
#   location            = "centralindia"
#   resource_group_name =  "rg-dev-ibm"
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }

# resource "azurerm_bastion_host" "bastionhost" {
#   name                = "ibmbastion"
#   location            = "centralindia"
#   resource_group_name =  "rg-dev-ibm"

#   ip_configuration {
#     name                 = "configuration"
#     subnet_id            = data.azurerm_subnet.subnet.id
#     public_ip_address_id = azurerm_public_ip.ibmpip.id
#   }
# }