output "dedicated_hardware_security_modules_id" {
  description = "Map of id values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.id }
}
output "dedicated_hardware_security_modules_location" {
  description = "Map of location values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.location }
}
output "dedicated_hardware_security_modules_management_network_profile" {
  description = "Map of management_network_profile values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.management_network_profile }
}
output "dedicated_hardware_security_modules_name" {
  description = "Map of name values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.name }
}
output "dedicated_hardware_security_modules_network_profile" {
  description = "Map of network_profile values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.network_profile }
}
output "dedicated_hardware_security_modules_resource_group_name" {
  description = "Map of resource_group_name values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.resource_group_name }
}
output "dedicated_hardware_security_modules_sku_name" {
  description = "Map of sku_name values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.sku_name }
}
output "dedicated_hardware_security_modules_stamp_id" {
  description = "Map of stamp_id values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.stamp_id }
}
output "dedicated_hardware_security_modules_tags" {
  description = "Map of tags values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.tags }
}
output "dedicated_hardware_security_modules_zones" {
  description = "Map of zones values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.zones }
}

