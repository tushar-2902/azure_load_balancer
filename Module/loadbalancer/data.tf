data "azurerm_public_ip" "load" {
  name                = "load-balancer"
  resource_group_name = var.rg-name
}

data "azurerm_subnet" "sb" {
  name                 = var.sb-name
  virtual_network_name = var.vn-name
  resource_group_name  = var.rg-name
}

