
output "external_lb_id" {
  value = azurerm_lb.external.id
}

output "internal_lb_id" {
  value = azurerm_lb.internal.id
}

output "external_backend_pool_id" {
  value = azurerm_lb_backend_address_pool.external_pool.id
}

output "internal_backend_pool_id" {
  value = azurerm_lb_backend_address_pool.internal_pool.id
}
