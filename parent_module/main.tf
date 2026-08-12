module "rgs" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rgs]
  source     = "../child_module/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet1" {
  depends_on = [module.vnet]
  source     = "../child_module/azurerm_subnet"
  subnet1    = var.subnet1
}

module "public_ip" {
  depends_on = [module.rgs]
  source     = "../child_module/azurerm_public_ip"
  public_ip  = var.public_ip

}

module "nic" {
  depends_on = [module.subnet1, module.public_ip]
  source     = "../child_module/azurerm_network_interface_card"
  nic        = var.nic
}

module "vms" {
  depends_on = [module.nic]
  source     = "../child_module/azurerm_virtual_machine"
  vms        = var.vms
}