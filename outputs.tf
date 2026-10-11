output "authentication_subflows_id" {
  description = "Map of id values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no id are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authentication_subflows_alias" {
  description = "Map of alias values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no alias are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "authentication_subflows_authenticator" {
  description = "Map of authenticator values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no authenticator are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.authenticator if v.authenticator != null && length(v.authenticator) > 0 }
}
output "authentication_subflows_description" {
  description = "Map of description values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no description are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "authentication_subflows_parent_flow_alias" {
  description = "Map of parent_flow_alias values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no parent_flow_alias are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.parent_flow_alias if v.parent_flow_alias != null && length(v.parent_flow_alias) > 0 }
}
output "authentication_subflows_priority" {
  description = "Map of priority values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no priority are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.priority if v.priority != null }
}
output "authentication_subflows_provider_id" {
  description = "Map of provider_id values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no provider_id are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.provider_id if v.provider_id != null && length(v.provider_id) > 0 }
}
output "authentication_subflows_realm_id" {
  description = "Map of realm_id values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "authentication_subflows_requirement" {
  description = "Map of requirement values across all authentication_subflows, keyed the same as var.authentication_subflows except keys with no requirement are omitted"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.requirement if v.requirement != null && length(v.requirement) > 0 }
}

