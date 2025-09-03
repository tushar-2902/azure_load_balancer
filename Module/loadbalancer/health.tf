resource "azurerm_lb_probe" "example" {
  loadbalancer_id     = azurerm_lb.lb.id
  name                = "http-probe"
  protocol            = "Http"     
  port                = 80
  request_path        = "/"        
}
