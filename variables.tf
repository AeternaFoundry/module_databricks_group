variable "groups" {
  description = <<EOT
Map of groups, attributes below
Required:
    - display_name
Optional:
    - acl_principal_id
    - allow_cluster_create
    - allow_instance_pool_create
    - api
    - databricks_sql_access
    - external_id
    - force
    - url
    - workspace_access
    - workspace_consume
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    display_name               = string
    acl_principal_id           = optional(string)
    allow_cluster_create       = optional(bool)
    allow_instance_pool_create = optional(bool)
    api                        = optional(string)
    databricks_sql_access      = optional(bool)
    external_id                = optional(string)
    force                      = optional(bool)
    url                        = optional(string)
    workspace_access           = optional(bool)
    workspace_consume          = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

