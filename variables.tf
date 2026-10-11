variable "migration_center_report_configs" {
  description = <<EOT
Map of migration_center_report_configs, attributes below
Required:
    - location
    - report_config_id
    - group_preferenceset_assignments (block):
        - group (required)
        - preference_set (required)
Optional:
    - deletion_policy
    - description
    - display_name
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location         = string
    report_config_id = string
    deletion_policy  = optional(string)
    description      = optional(string)
    display_name     = optional(string)
    project          = optional(string)
    group_preferenceset_assignments = list(object({
      group          = string
      preference_set = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.migration_center_report_configs : (
        length(v.group_preferenceset_assignments) >= 1
      )
    ])
    error_message = "Each group_preferenceset_assignments list must contain at least 1 items"
  }
}

