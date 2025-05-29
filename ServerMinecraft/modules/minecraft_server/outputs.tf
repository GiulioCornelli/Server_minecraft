output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "resource_group_name" {
  value = azurerm_resource_group.minecraft.name
}

output "network_interface_id" {
  value = azurerm_network_interface.nic.id
}