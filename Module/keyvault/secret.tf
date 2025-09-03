resource "azurerm_key_vault_secret" "name" {
  name         = "adminname"
  value        = "tusharadmin"
  key_vault_id = azurerm_key_vault.kv.id
}

resource "azurerm_key_vault_secret" "password" {
  name         = "password"
  value        = "tusharadmin@2021"
  key_vault_id = azurerm_key_vault.kv.id
}