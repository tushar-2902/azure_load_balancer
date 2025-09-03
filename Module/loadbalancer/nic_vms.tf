resource "azurerm_network_interface" "nic" {
  count               = 2
  name                = "demo-nic-${count.index}"
  location            = var.location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.sb.id
    private_ip_address_allocation = "Dynamic"
  }
}