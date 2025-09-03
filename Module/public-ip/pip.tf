resource "azurerm_public_ip" "bas" {
  name                = "tushar-bastion"
  resource_group_name = var.rg-name
  location            = var.location
  allocation_method   = "Static"
}


resource "azurerm_public_ip" "lb_pip" {
  name                = "load-balancer"
  location            = var.location
  resource_group_name = var.rg-name
  allocation_method   = "Static"
  sku                 = "Standard"
}

