module "resource-rg" {
  source = "../modules/azurerm_resource_group"
  rgs    = var.rg_map

}

module "resource-storage" {
  depends_on = [module.resource-rg]
  source     = "../modules/azurerm_storage_account"
  storages   = var.storage_map

}

module "resource-vnet" {
  depends_on = [module.resource-rg]
  source     = "../modules/azurerm_virtual_network"
  vnets      = var.vnet_map

}

module "resource-subnet" {
  depends_on = [module.resource-vnet]
  source     = "../modules/azurerm_subnet"
  subnets    = var.subnet_map

}

# module "VMs" {
#   depends_on = [module.resource-subnet]
#   source     = "../modules/azurerm_virtual_machine"
#   vms        = var.vms
# }
