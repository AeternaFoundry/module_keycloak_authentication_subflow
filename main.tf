resource "keycloak_authentication_subflow" "authentication_subflows" {
  for_each = var.authentication_subflows

  alias             = each.value.alias
  parent_flow_alias = each.value.parent_flow_alias
  realm_id          = each.value.realm_id
  authenticator     = each.value.authenticator
  description       = each.value.description
  priority          = each.value.priority
  provider_id       = each.value.provider_id
  requirement       = each.value.requirement
}

