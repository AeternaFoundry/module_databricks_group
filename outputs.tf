output "groups_id" {
  description = "Map of id values across all groups, keyed the same as var.groups except keys with no id are omitted"
  value       = { for k, v in databricks_group.groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "groups_acl_principal_id" {
  description = "Map of acl_principal_id values across all groups, keyed the same as var.groups except keys with no acl_principal_id are omitted"
  value       = { for k, v in databricks_group.groups : k => v.acl_principal_id if v.acl_principal_id != null && length(v.acl_principal_id) > 0 }
}
output "groups_allow_cluster_create" {
  description = "Map of allow_cluster_create values across all groups, keyed the same as var.groups except keys with no allow_cluster_create are omitted"
  value       = { for k, v in databricks_group.groups : k => v.allow_cluster_create if v.allow_cluster_create != null }
}
output "groups_allow_instance_pool_create" {
  description = "Map of allow_instance_pool_create values across all groups, keyed the same as var.groups except keys with no allow_instance_pool_create are omitted"
  value       = { for k, v in databricks_group.groups : k => v.allow_instance_pool_create if v.allow_instance_pool_create != null }
}
output "groups_api" {
  description = "Map of api values across all groups, keyed the same as var.groups except keys with no api are omitted"
  value       = { for k, v in databricks_group.groups : k => v.api if v.api != null && length(v.api) > 0 }
}
output "groups_databricks_sql_access" {
  description = "Map of databricks_sql_access values across all groups, keyed the same as var.groups except keys with no databricks_sql_access are omitted"
  value       = { for k, v in databricks_group.groups : k => v.databricks_sql_access if v.databricks_sql_access != null }
}
output "groups_display_name" {
  description = "Map of display_name values across all groups, keyed the same as var.groups except keys with no display_name are omitted"
  value       = { for k, v in databricks_group.groups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "groups_external_id" {
  description = "Map of external_id values across all groups, keyed the same as var.groups except keys with no external_id are omitted"
  value       = { for k, v in databricks_group.groups : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "groups_force" {
  description = "Map of force values across all groups, keyed the same as var.groups except keys with no force are omitted"
  value       = { for k, v in databricks_group.groups : k => v.force if v.force != null }
}
output "groups_provider_config" {
  description = "Map of provider_config values across all groups, keyed the same as var.groups except keys with no provider_config are omitted"
  value       = { for k, v in databricks_group.groups : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "groups_url" {
  description = "Map of url values across all groups, keyed the same as var.groups except keys with no url are omitted"
  value       = { for k, v in databricks_group.groups : k => v.url if v.url != null && length(v.url) > 0 }
}
output "groups_workspace_access" {
  description = "Map of workspace_access values across all groups, keyed the same as var.groups except keys with no workspace_access are omitted"
  value       = { for k, v in databricks_group.groups : k => v.workspace_access if v.workspace_access != null }
}
output "groups_workspace_consume" {
  description = "Map of workspace_consume values across all groups, keyed the same as var.groups except keys with no workspace_consume are omitted"
  value       = { for k, v in databricks_group.groups : k => v.workspace_consume if v.workspace_consume != null }
}

