variable "grant_privileges_to_account_roles" {
  description = <<EOT
Map of grant_privileges_to_account_roles, attributes below
Required:
    - account_role_name
Optional:
    - all_privileges
    - always_apply
    - always_apply_trigger
    - on_account
    - privileges
    - strict_privilege_management
    - with_grant_option
    - on_account_object (block):
        - inherited (optional, block):
            - object_type_plural (required)
        - object_name (optional)
        - object_type (optional)
    - on_schema (block):
        - all_schemas_in_database (optional)
        - future_schemas_in_database (optional)
        - inherited (optional, block):
            - in_account (optional)
            - in_database (optional)
        - schema_name (optional)
    - on_schema_object (block):
        - all (optional, block):
            - in_database (optional)
            - in_schema (optional)
            - object_type_plural (required)
        - future (optional, block):
            - in_database (optional)
            - in_schema (optional)
            - object_type_plural (required)
        - inherited (optional, block):
            - in_account (optional)
            - in_database (optional)
            - in_schema (optional)
            - object_type_plural (required)
        - object_name (optional)
        - object_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    account_role_name           = string
    all_privileges              = optional(bool)
    always_apply                = optional(bool)
    always_apply_trigger        = optional(string)
    on_account                  = optional(bool)
    privileges                  = optional(set(string))
    strict_privilege_management = optional(bool)
    with_grant_option           = optional(bool)
    on_account_object = optional(object({
      inherited = optional(object({
        object_type_plural = string
      }))
      object_name = optional(string)
      object_type = optional(string)
    }))
    on_schema = optional(object({
      all_schemas_in_database    = optional(string)
      future_schemas_in_database = optional(string)
      inherited = optional(object({
        in_account  = optional(bool)
        in_database = optional(string)
      }))
      schema_name = optional(string)
    }))
    on_schema_object = optional(object({
      all = optional(object({
        in_database        = optional(string)
        in_schema          = optional(string)
        object_type_plural = string
      }))
      future = optional(object({
        in_database        = optional(string)
        in_schema          = optional(string)
        object_type_plural = string
      }))
      inherited = optional(object({
        in_account         = optional(bool)
        in_database        = optional(string)
        in_schema          = optional(string)
        object_type_plural = string
      }))
      object_name = optional(string)
      object_type = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

