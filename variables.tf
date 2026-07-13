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
  # --- Unconfirmed validation candidates, derived from azurerm_dedicated_hardware_security_module's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DedicatedHardwareSecurityModuleName] !ok
  # path: name
  #   source:    [from validate.DedicatedHardwareSecurityModuleName] !regexp.MustCompile(`^[a-zA-Z][a-zA-Z0-9-]{1,22}[a-zA-Z0-9]$`).MatchString(v)
  # path: name
  #   source:    [from validate.DedicatedHardwareSecurityModuleName] regexp.MustCompile("(--)").MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_profile.network_interface_private_ip_addresses[*]
  #   source:    [from azValidate.IPv4Address] !ok
  # path: network_profile.network_interface_private_ip_addresses[*]
  #   source:    [from azValidate.IPv4Address] four == nil
  # path: network_profile.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: network_profile.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: management_network_profile.network_interface_private_ip_addresses[*]
  #   source:    [from azValidate.IPv4Address] !ok
  # path: management_network_profile.network_interface_private_ip_addresses[*]
  #   source:    [from azValidate.IPv4Address] four == nil
  # path: management_network_profile.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: management_network_profile.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: stamp_id
  #   condition: contains(["stamp1", "stamp2"], value)
  #   message:   must be one of: stamp1, stamp2
  # path: zones[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

