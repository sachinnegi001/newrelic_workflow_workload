resource "newrelic_workload" "foo" {
    for_each = var.details
    name = each.value.name
    account_id = each.value.account_id

    description = each.value.description

    entity_guids = each.value.entity_guids

     entity_search_query {
        query = each.value.query
    }
  

    
}