output "authentication_subflows_id" {
  description = "Map of id values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.id }
}
output "authentication_subflows_alias" {
  description = "Map of alias values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.alias }
}
output "authentication_subflows_authenticator" {
  description = "Map of authenticator values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.authenticator }
}
output "authentication_subflows_description" {
  description = "Map of description values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.description }
}
output "authentication_subflows_parent_flow_alias" {
  description = "Map of parent_flow_alias values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.parent_flow_alias }
}
output "authentication_subflows_priority" {
  description = "Map of priority values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.priority }
}
output "authentication_subflows_provider_id" {
  description = "Map of provider_id values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.provider_id }
}
output "authentication_subflows_realm_id" {
  description = "Map of realm_id values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.realm_id }
}
output "authentication_subflows_requirement" {
  description = "Map of requirement values across all authentication_subflows, keyed the same as var.authentication_subflows"
  value       = { for k, v in keycloak_authentication_subflow.authentication_subflows : k => v.requirement }
}

