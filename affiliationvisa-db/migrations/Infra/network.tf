resource "azurerm_postgresql_flexible_server_firewall_rule" "AffiliationVisa-fw" {
  name             = "Open-fw"
  server_id        = azurerm_postgresql_flexible_server.AffiliationVisa.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}
