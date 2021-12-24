resource "azurerm_resource_group" "rg_deploy_container" {
  name     = var.resource_group
  location = var.location
}

resource "random_id" "aci_unique_string" {
  byte_length = 2
}

resource "azurerm_container_registry" "acr" {
  name                = "crdeploycontainer"
  resource_group_name = azurerm_resource_group.rg_deploy_container.name
  location            = azurerm_resource_group.rg_deploy_container.location
  sku                 = "Basic"
  admin_enabled       = false
}
