data "oci_database_databases" "database_databases_lookup" {
  for_each = var.database_databases_lookup

  compartment_id        = each.value.compartment_id
  db_home_id            = each.value.db_home_id
  db_name               = each.value.db_name
  failover_targets      = each.value.failover_targets
  managed_auto_failover = each.value.managed_auto_failover
  state                 = each.value.state
  system_id             = each.value.system_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

