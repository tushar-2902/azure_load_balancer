resource "azurerm_lb" "lb" {
  name                = var.lb-name
  location            = var.location
  resource_group_name = var.rg-name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = data.azurerm_public_ip.load.id
  }
}

