resource "azurerm_resource_group" "RG" {
  for_each = var.Devops-RG
  name     = each.value.resource_group_name
  location = each.value.location

}
