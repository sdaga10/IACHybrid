output "vm_public_ip" {
  value = azurerm_virtual_machine.vm.network_interface_ids[0]
}