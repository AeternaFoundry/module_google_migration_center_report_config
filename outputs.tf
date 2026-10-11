output "migration_center_report_configs_id" {
  description = "Map of id values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no id are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "migration_center_report_configs_create_time" {
  description = "Map of create_time values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no create_time are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "migration_center_report_configs_deletion_policy" {
  description = "Map of deletion_policy values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "migration_center_report_configs_description" {
  description = "Map of description values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no description are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "migration_center_report_configs_display_name" {
  description = "Map of display_name values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no display_name are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "migration_center_report_configs_group_preferenceset_assignments" {
  description = "Map of group_preferenceset_assignments values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no group_preferenceset_assignments are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.group_preferenceset_assignments if v.group_preferenceset_assignments != null && length(v.group_preferenceset_assignments) > 0 }
}
output "migration_center_report_configs_location" {
  description = "Map of location values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no location are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "migration_center_report_configs_name" {
  description = "Map of name values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no name are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "migration_center_report_configs_project" {
  description = "Map of project values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no project are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "migration_center_report_configs_report_config_id" {
  description = "Map of report_config_id values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no report_config_id are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.report_config_id if v.report_config_id != null && length(v.report_config_id) > 0 }
}
output "migration_center_report_configs_update_time" {
  description = "Map of update_time values across all migration_center_report_configs, keyed the same as var.migration_center_report_configs except keys with no update_time are omitted"
  value       = { for k, v in google_migration_center_report_config.migration_center_report_configs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

