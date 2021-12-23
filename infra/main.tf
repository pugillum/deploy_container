resource "azurerm_resource_group" "rg_deploy_container" {
  name     = var.resource_group
  location = var.location
}

resource "random_id" "aci_unique_string" {
  byte_length = 2
}

# resource "azurerm_container_group" "deploy_container_group" {
#   name                = "cg-deploy-container"
#   location            = azurerm_resource_group.rg_deploy_container.location
#   resource_group_name = azurerm_resource_group.rg_deploy_container.name
#   ip_address_type     = "public"
#   dns_name_label      = "aci-test-${random_id.aci_unique_string.hex}"
#   os_type             = "Linux"
# }

resource "azurerm_container_registry" "acr" {
  name                = "crdeploycontainer"
  resource_group_name = azurerm_resource_group.rg_deploy_container.name
  location            = azurerm_resource_group.rg_deploy_container.location
  sku                 = "Standard"
  admin_enabled       = false
}
