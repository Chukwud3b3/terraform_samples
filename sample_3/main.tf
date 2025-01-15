
resource "azurerm_resource_group" "hub_spoke" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "hub" {
  name                = var.hub_vnet_name
  location            = azurerm_resource_group.hub_spoke.location
  resource_group_name = azurerm_resource_group.hub_spoke.name
  address_space       = [var.hub_address_space]
}

resource "azurerm_virtual_network" "spoke" {
  count               = 3
  name                = "${var.spoke_vnet_name_prefix}-${count.index + 1}"
  location            = azurerm_resource_group.hub_spoke.location
  resource_group_name = azurerm_resource_group.hub_spoke.name
  address_space       = [element(var.spoke_address_spaces, count.index)]
}

resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  count                   = 3
  name                    = "hub-to-spoke-${count.index + 1}"
  resource_group_name     = azurerm_resource_group.hub_spoke.name
  virtual_network_name    = azurerm_virtual_network.hub.name
  remote_virtual_network_id = element(azurerm_virtual_network.spoke.*.id, count.index)
  allow_forwarded_traffic = true
  allow_gateway_transit   = false
  use_remote_gateways     = false
}

resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  count                   = 3
  name                    = "spoke-to-hub-${count.index + 1}"
  resource_group_name     = azurerm_resource_group.hub_spoke.name
  virtual_network_name    = element(azurerm_virtual_network.spoke.*.name, count.index)
  remote_virtual_network_id = azurerm_virtual_network.hub.id
  allow_forwarded_traffic = true
  allow_gateway_transit   = false
  use_remote_gateways     = false
}
