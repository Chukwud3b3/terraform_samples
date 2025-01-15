
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.example.id
}

output "subnet_id" {
  value = azurerm_subnet.example.id
}

output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.example.public_ip_address
}
