

 resource "azurerm_eventhub_namespace" "eventhub_namespace" {
  name                = var.eventhub_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku1
  capacity            = var.capacity
}
