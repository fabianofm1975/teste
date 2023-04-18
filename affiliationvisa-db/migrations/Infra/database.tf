resource "azurerm_postgresql_flexible_server_database" "AffiliationVisa" {
  name      = "AffiliationVisaDB"
  server_id = azurerm_postgresql_flexible_server.AffiliationVisa.id
  collation = "en_US.utf8"
  charset   = "utf8"
}

resource "azurerm_postgresql_flexible_server_configuration" "AffiliationVisa-cfg" {
  name      = "azure.extensions"
  server_id = azurerm_postgresql_flexible_server.AffiliationVisa.id
  value     = "PG_STAT_STATEMENTS,PG_BUFFERCACHE,PG_FREESPACEMAP,PG_REPACK,PAGEINSPECT,PG_VISIBILITY,PGSTATTUPLE,PG_PREWARM"
}
