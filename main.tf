data "oci_fleet_apps_management_provisions" "fleet_apps_management_provisions_lookup" {
  for_each = var.fleet_apps_management_provisions_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  fleet_id       = each.value.fleet_id
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

