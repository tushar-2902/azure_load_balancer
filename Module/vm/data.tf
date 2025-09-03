data "azurerm_subnet" "sb" {
  name                 = var.sb-name
  virtual_network_name = var.vn-name
  resource_group_name  = var.rg-name
}

data "azurerm_key_vault" "kv" {
  name                = var.kv-name
  resource_group_name = var.rg-name
}

data "azurerm_key_vault_secret" "kvs1" {
  name         = "adminname"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "kvs2" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.kv.id
}