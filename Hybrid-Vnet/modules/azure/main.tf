resource "azurerm_virtual_network" "hybrid_vnet" {
  name                = "hybrid-vnet"
  address_space       = [var.cidr_block]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "hybrid_subnet" {
  name                 = "hybrid-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.hybrid_vnet.name
  address_prefixes       = [var.subnet_cidr]
}