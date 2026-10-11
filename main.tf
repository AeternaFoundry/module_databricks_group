resource "databricks_group" "groups" {
  for_each = var.groups

  display_name               = each.value.display_name
  acl_principal_id           = each.value.acl_principal_id
  allow_cluster_create       = each.value.allow_cluster_create
  allow_instance_pool_create = each.value.allow_instance_pool_create
  api                        = each.value.api
  databricks_sql_access      = each.value.databricks_sql_access
  external_id                = each.value.external_id
  force                      = each.value.force
  url                        = each.value.url
  workspace_access           = each.value.workspace_access
  workspace_consume          = each.value.workspace_consume

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

