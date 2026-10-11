resource "google_migration_center_report_config" "migration_center_report_configs" {
  for_each = var.migration_center_report_configs

  location         = each.value.location
  report_config_id = each.value.report_config_id
  deletion_policy  = each.value.deletion_policy
  description      = each.value.description
  display_name     = each.value.display_name
  project          = each.value.project

  dynamic "group_preferenceset_assignments" {
    for_each = each.value.group_preferenceset_assignments
    content {
      group          = group_preferenceset_assignments.value.group
      preference_set = group_preferenceset_assignments.value.preference_set
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

