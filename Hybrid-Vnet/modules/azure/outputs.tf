output "vnet_id" {
  value = azurerm_virtual_network.hybrid_vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.hybrid_subnet.id
}