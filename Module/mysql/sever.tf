resource "azurerm_mssql_server" "example" {
  name                         = "tushar-sql"
  resource_group_name          = var.rg-name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "tusharstorage420"
  administrator_login_password = "tushar@2021"
  minimum_tls_version          = "1.2"
}

