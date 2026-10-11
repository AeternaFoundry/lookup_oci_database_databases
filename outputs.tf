output "database_databases_lookup_id" {
  description = "Map of id values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_databases_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_databases_lookup_databases" {
  description = "Map of databases values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no databases are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.databases if v.databases != null && length(v.databases) > 0 }
}
output "database_databases_lookup_db_home_id" {
  description = "Map of db_home_id values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no db_home_id are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.db_home_id if v.db_home_id != null && length(v.db_home_id) > 0 }
}
output "database_databases_lookup_db_name" {
  description = "Map of db_name values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no db_name are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "database_databases_lookup_failover_targets" {
  description = "Map of failover_targets values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no failover_targets are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.failover_targets if v.failover_targets != null && length(v.failover_targets) > 0 }
}
output "database_databases_lookup_filter" {
  description = "Map of filter values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_databases_lookup_managed_auto_failover" {
  description = "Map of managed_auto_failover values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no managed_auto_failover are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.managed_auto_failover if v.managed_auto_failover != null && length(v.managed_auto_failover) > 0 }
}
output "database_databases_lookup_state" {
  description = "Map of state values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_databases_lookup_system_id" {
  description = "Map of system_id values across all database_databases_lookup, keyed the same as var.database_databases_lookup except keys with no system_id are omitted"
  value       = { for k, v in data.oci_database_databases.database_databases_lookup : k => v.system_id if v.system_id != null && length(v.system_id) > 0 }
}

