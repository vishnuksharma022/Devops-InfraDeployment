resource "azurerm_virtual_network" "vnet" {
  for_each            = var.azure-vnet
  name                = each.value.virtual_network_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  for_each             = var.azure-subnet
  name                 = each.value.subnet
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
