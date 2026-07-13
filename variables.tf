variable "dedicated_hardware_security_modules" {
  description = <<EOT
Map of dedicated_hardware_security_modules, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
    - network_profile (block):
        - network_interface_private_ip_addresses (required)
        - subnet_id (required)
Optional:
    - stamp_id
    - tags
    - zones
    - management_network_profile (block):
        - network_interface_private_ip_addresses (required)
        - subnet_id (required)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    stamp_id            = optional(string)
    tags                = optional(map(string))
    zones               = optional(set(string))
    network_profile = object({
      network_interface_private_ip_addresses = set(string)
      subnet_id                              = string
    })
    management_network_profile = optional(object({
      network_interface_private_ip_addresses = set(string)
      subnet_id                              = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hardware_security_modules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hardware_security_modules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hardware_security_modules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hardware_security_modules : (
        v.stamp_id == null || (contains(["stamp1", "stamp2"], v.stamp_id))
      )
    ])
    error_message = "must be one of: stamp1, stamp2"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hardware_security_modules : (
        v.zones == null || (alltrue([for x in v.zones : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hardware_security_modules : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 17 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

