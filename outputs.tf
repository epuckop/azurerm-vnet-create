output "vnet_name" {
  description = "The Name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_location" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.vnet.address_space
}

output "id" {
  value = {
    vnet = azurerm_virtual_network.vnet.id
    subnets = azurerm_subnet.subnet.*.id
  }
}

output "name" {
  value = {
    vnet = azurerm_virtual_network.vnet.name
    subnets = azurerm_subnet.subnet.*.name
  }
}