variable "fleet_apps_management_provisions_lookup" {
  description = <<EOT
Map of fleet_apps_management_provisions_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - fleet_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    fleet_id       = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

