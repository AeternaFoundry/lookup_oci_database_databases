variable "database_databases_lookup" {
  description = <<EOT
Map of database_databases_lookup, attributes below
Required:
    - compartment_id
Optional:
    - db_home_id
    - db_name
    - failover_targets
    - managed_auto_failover
    - state
    - system_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = string
    db_home_id            = optional(string)
    db_name               = optional(string)
    failover_targets      = optional(string)
    managed_auto_failover = optional(string)
    state                 = optional(string)
    system_id             = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

