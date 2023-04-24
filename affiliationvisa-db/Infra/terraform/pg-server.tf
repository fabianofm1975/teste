resource "azurerm_postgresql_flexible_server" "AffiliationVisa" {
  name                          = "affiliationvisa-db"
  resource_group_name           = "Automacao"
  location                      = "eastus"
  version                       = "12"
  administrator_login           = "psqladminafl"
  administrator_password        = "Stone@@2023!"
  zone                          = "1"
  storage_mb                    = 32768
  sku_name                      = "B_Standard_B1ms"
  backup_retention_days         = "7"
}
