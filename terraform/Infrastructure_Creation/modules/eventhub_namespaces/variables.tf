

variable "eventhub_name" {
  description = "The name of the Event Hub namespace"
  type        = string
}
 
variable "sku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}
 
variable "capacity" {
  description = "The capacity (throughput units) of the Event Hub namespace"
  type        = number
}
variable "resource_group_name" {
  type    = string
  
}
 
variable "location" {
  type    = string
 
}