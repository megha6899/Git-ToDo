# data "azurerm_subnet" "subnet" {
#   for_each = var.vms
#   name = each.value.subnet_name
#   virtual_network_name = each.value.virtual_network_name
#   resource_group_name = each.value.resource_group_name
  
# }

# resource "azurerm_network_interface" "nic" {
#   for_each = var.vms
#   name                = each.value.nic_name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name

#   ip_configuration {
#     name                          = "ibmip"
#     subnet_id                     = data.azurerm_subnet.subnet[each.key].id
#     private_ip_address_allocation = "Dynamic"
   
#   }
# }

# resource "azurerm_linux_virtual_machine" "vm" {
#   for_each = var.vms
#   name                            = each.value.vm_name
#   resource_group_name             = each.value.resource_group_name
#   location                        = each.value.location
#   size                            = each.value.size
#   admin_username                  = "megha"
#   admin_password                  = "devops@123"
#   disable_password_authentication = false
#   network_interface_ids           = [azurerm_network_interface.nic[each.key].id]



#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }