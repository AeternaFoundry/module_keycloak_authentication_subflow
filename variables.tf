variable "authentication_subflows" {
  description = <<EOT
Map of authentication_subflows, attributes below
Required:
    - alias
    - parent_flow_alias
    - realm_id
Optional:
    - authenticator
    - description
    - priority
    - provider_id
    - requirement
EOT

  type = map(object({
    alias             = string
    parent_flow_alias = string
    realm_id          = string
    authenticator     = optional(string)
    description       = optional(string)
    priority          = optional(number)
    provider_id       = optional(string)
    requirement       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.authentication_subflows : (
        v.provider_id == null || (contains(["basic-flow", "form-flow", "client-flow"], v.provider_id))
      )
    ])
    error_message = "must be one of: \"basic-flow\", \"form-flow\", \"client-flow\""
  }
  validation {
    condition = alltrue([
      for k, v in var.authentication_subflows : (
        v.requirement == null || (contains(["REQUIRED", "ALTERNATIVE", "OPTIONAL", "CONDITIONAL", "DISABLED"], v.requirement))
      )
    ])
    error_message = "must be one of: \"REQUIRED\", \"ALTERNATIVE\", \"OPTIONAL\", \"CONDITIONAL\", \"DISABLED\""
  }
}

