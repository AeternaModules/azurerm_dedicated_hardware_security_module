output "dedicated_hardware_security_modules_id" {
  description = "Map of id values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dedicated_hardware_security_modules_location" {
  description = "Map of location values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dedicated_hardware_security_modules_management_network_profile" {
  description = "Map of management_network_profile values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.management_network_profile if v.management_network_profile != null && length(v.management_network_profile) > 0 }
}
output "dedicated_hardware_security_modules_name" {
  description = "Map of name values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dedicated_hardware_security_modules_network_profile" {
  description = "Map of network_profile values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.network_profile if v.network_profile != null && length(v.network_profile) > 0 }
}
output "dedicated_hardware_security_modules_resource_group_name" {
  description = "Map of resource_group_name values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dedicated_hardware_security_modules_sku_name" {
  description = "Map of sku_name values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "dedicated_hardware_security_modules_stamp_id" {
  description = "Map of stamp_id values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.stamp_id if v.stamp_id != null && length(v.stamp_id) > 0 }
}
output "dedicated_hardware_security_modules_tags" {
  description = "Map of tags values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dedicated_hardware_security_modules_zones" {
  description = "Map of zones values across all dedicated_hardware_security_modules, keyed the same as var.dedicated_hardware_security_modules"
  value       = { for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

