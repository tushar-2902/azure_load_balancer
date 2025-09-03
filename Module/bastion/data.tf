data "azurerm_subnet" "sb" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = var.vn-name
  resource_group_name  = var.rg-name
}


data "azurerm_public_ip" "bas" {
  name                = "tushar-bastion"
  resource_group_name = var.rg-name
}

