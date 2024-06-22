
data "azurerm_resource_group" "rg" {
  name = "Schnieder_hemant"
}

module "azurerm_eventhub_namespace" {
  source = "./modules/eventhub_namespaces"
  sku1 = var.sku1
  eventhub_namespaces_data_processing_dev = var.eventhub_namespaces_data_processing_dev
  #location = var.location
  capacity = var.capacity
   resource_group_name = data.azurerm_resource_group.rg.name
  location              = data.azurerm_resource_group.rg.location
}















