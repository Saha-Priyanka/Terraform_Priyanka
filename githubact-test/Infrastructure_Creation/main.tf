

module "azurerm_resource_group" {
  source                = "./modules/resource_group"
  resource_group_name   = upper(var.resource_group_name)
  location              = var.location
}

module "azurerm_eventhub_namespace" {
  source = "./modules/eventhub_namespaces"
  sku1 = var.sku1
  eventhub_namespaces_data_processing_dev = var.eventhub_namespaces_data_processing_dev
  #location = var.location
  capacity = var.capacity
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
}

module "azurerm_static_site" {
  source = "./modules/staticwebsite"
  #location = var.location
  web_sites_productivity_app_production = var.web_sites_productivity_app_production
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_l
}













