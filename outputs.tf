output "grant_privileges_to_account_roles_id" {
  description = "Map of id values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no id are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grant_privileges_to_account_roles_account_role_name" {
  description = "Map of account_role_name values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no account_role_name are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.account_role_name if v.account_role_name != null && length(v.account_role_name) > 0 }
}
output "grant_privileges_to_account_roles_all_privileges" {
  description = "Map of all_privileges values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no all_privileges are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.all_privileges if v.all_privileges != null }
}
output "grant_privileges_to_account_roles_always_apply" {
  description = "Map of always_apply values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no always_apply are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.always_apply if v.always_apply != null }
}
output "grant_privileges_to_account_roles_always_apply_trigger" {
  description = "Map of always_apply_trigger values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no always_apply_trigger are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.always_apply_trigger if v.always_apply_trigger != null && length(v.always_apply_trigger) > 0 }
}
output "grant_privileges_to_account_roles_on_account" {
  description = "Map of on_account values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no on_account are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.on_account if v.on_account != null }
}
output "grant_privileges_to_account_roles_on_account_object" {
  description = "Map of on_account_object values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no on_account_object are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => one(v.on_account_object) if v.on_account_object != null && length(v.on_account_object) > 0 }
}
output "grant_privileges_to_account_roles_on_schema" {
  description = "Map of on_schema values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no on_schema are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => one(v.on_schema) if v.on_schema != null && length(v.on_schema) > 0 }
}
output "grant_privileges_to_account_roles_on_schema_object" {
  description = "Map of on_schema_object values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no on_schema_object are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => one(v.on_schema_object) if v.on_schema_object != null && length(v.on_schema_object) > 0 }
}
output "grant_privileges_to_account_roles_privileges" {
  description = "Map of privileges values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no privileges are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.privileges if v.privileges != null && length(v.privileges) > 0 }
}
output "grant_privileges_to_account_roles_strict_privilege_management" {
  description = "Map of strict_privilege_management values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no strict_privilege_management are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.strict_privilege_management if v.strict_privilege_management != null }
}
output "grant_privileges_to_account_roles_with_grant_option" {
  description = "Map of with_grant_option values across all grant_privileges_to_account_roles, keyed the same as var.grant_privileges_to_account_roles except keys with no with_grant_option are omitted"
  value       = { for k, v in snowflake_grant_privileges_to_account_role.grant_privileges_to_account_roles : k => v.with_grant_option if v.with_grant_option != null }
}

