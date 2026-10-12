resource "snowflake_grant_privileges_to_account_role" "grant_privileges_to_account_roles" {
  for_each = var.grant_privileges_to_account_roles

  account_role_name           = each.value.account_role_name
  all_privileges              = each.value.all_privileges
  always_apply                = each.value.always_apply
  always_apply_trigger        = each.value.always_apply_trigger
  on_account                  = each.value.on_account
  privileges                  = each.value.privileges
  strict_privilege_management = each.value.strict_privilege_management
  with_grant_option           = each.value.with_grant_option

  dynamic "on_account_object" {
    for_each = each.value.on_account_object != null ? [each.value.on_account_object] : []
    content {
      dynamic "inherited" {
        for_each = on_account_object.value.inherited != null ? [on_account_object.value.inherited] : []
        content {
          object_type_plural = inherited.value.object_type_plural
        }
      }
      object_name = on_account_object.value.object_name
      object_type = on_account_object.value.object_type
    }
  }

  dynamic "on_schema" {
    for_each = each.value.on_schema != null ? [each.value.on_schema] : []
    content {
      all_schemas_in_database    = on_schema.value.all_schemas_in_database
      future_schemas_in_database = on_schema.value.future_schemas_in_database
      dynamic "inherited" {
        for_each = on_schema.value.inherited != null ? [on_schema.value.inherited] : []
        content {
          in_account  = inherited.value.in_account
          in_database = inherited.value.in_database
        }
      }
      schema_name = on_schema.value.schema_name
    }
  }

  dynamic "on_schema_object" {
    for_each = each.value.on_schema_object != null ? [each.value.on_schema_object] : []
    content {
      dynamic "all" {
        for_each = on_schema_object.value.all != null ? [on_schema_object.value.all] : []
        content {
          in_database        = all.value.in_database
          in_schema          = all.value.in_schema
          object_type_plural = all.value.object_type_plural
        }
      }
      dynamic "future" {
        for_each = on_schema_object.value.future != null ? [on_schema_object.value.future] : []
        content {
          in_database        = future.value.in_database
          in_schema          = future.value.in_schema
          object_type_plural = future.value.object_type_plural
        }
      }
      dynamic "inherited" {
        for_each = on_schema_object.value.inherited != null ? [on_schema_object.value.inherited] : []
        content {
          in_account         = inherited.value.in_account
          in_database        = inherited.value.in_database
          in_schema          = inherited.value.in_schema
          object_type_plural = inherited.value.object_type_plural
        }
      }
      object_name = on_schema_object.value.object_name
      object_type = on_schema_object.value.object_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

