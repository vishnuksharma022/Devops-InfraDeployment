resource "azurerm_resource_group" "RG" {
  for_each = var.Devops-RG
  name     = each.value.azurerm_resource_group
  location = each.value.location

}
