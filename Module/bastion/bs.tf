resource "azurerm_bastion_host" "example" {
  name                = var.bas-name
  location            = var.location
  resource_group_name = var.rg-name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.sb.id  
    public_ip_address_id = data.azurerm_public_ip.bas.id           # ye theek hai
  }
}
