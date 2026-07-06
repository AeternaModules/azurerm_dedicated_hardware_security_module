output "dedicated_hardware_security_modules" {
  description = "All dedicated_hardware_security_module resources"
  value       = azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules
}
output "dedicated_hardware_security_modules_location" {
  description = "List of location values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.location]
}
output "dedicated_hardware_security_modules_management_network_profile" {
  description = "List of management_network_profile values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.management_network_profile]
}
output "dedicated_hardware_security_modules_name" {
  description = "List of name values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.name]
}
output "dedicated_hardware_security_modules_network_profile" {
  description = "List of network_profile values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.network_profile]
}
output "dedicated_hardware_security_modules_resource_group_name" {
  description = "List of resource_group_name values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.resource_group_name]
}
output "dedicated_hardware_security_modules_sku_name" {
  description = "List of sku_name values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.sku_name]
}
output "dedicated_hardware_security_modules_stamp_id" {
  description = "List of stamp_id values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.stamp_id]
}
output "dedicated_hardware_security_modules_tags" {
  description = "List of tags values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.tags]
}
output "dedicated_hardware_security_modules_zones" {
  description = "List of zones values across all dedicated_hardware_security_modules"
  value       = [for k, v in azurerm_dedicated_hardware_security_module.dedicated_hardware_security_modules : v.zones]
}

