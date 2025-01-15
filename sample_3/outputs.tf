
output "hub_vnet_id" {
  value = azurerm_virtual_network.hub.id
}

output "spoke_vnet_ids" {
  value = azurerm_virtual_network.spoke.*.id
}

output "hub_peering_ids" {
  value = azurerm_virtual_network_peering.hub_to_spoke.*.id
}

output "spoke_peering_ids" {
  value = azurerm_virtual_network_peering.spoke_to_hub.*.id
}
