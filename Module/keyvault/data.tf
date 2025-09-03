data "azurerm_key_vault" "kv" {
  name                = var.kv-name
  resource_group_name = var.rg-name
  depends_on = [ azurerm_key_vault.kv ]
}