
resource "newrelic_alert_policy" "my-policy" {
  for_each = var.details2
  name     = each.value.policyname
}


resource "newrelic_notification_destination" "destination" {
  for_each   = var.details2
  account_id = each.value.account_id
  name       = each.value.notification_destination_name
  type       = each.value.destination_type

  property {
    key   = each.value.destination_key
    value = each.value.destination_value
  }

}


resource "newrelic_notification_channel" "channel" {
  for_each       = var.details2
  account_id     = each.value.account_id
  name           = each.value.channel_name
  type           = each.value.channel_type
  destination_id = each.value.destination_id
  product        = each.value.channel_product 


  property {
    key   = each.value.channel_key
    value = each.value.channel_value

  }
}

resource "newrelic_workflow" "workflow-example" {
  for_each              = var.details2
  name                  = each.value.workflow_name
  muting_rules_handling = each.value.muting_rules_handling

  issues_filter {
    name = each.value.workflow_filter_name
    type = each.value.workflow_filter_type

    predicate {
      attribute = each.value.workflow_predicate_attribute
      operator  = each.value.workflow_predicate_operator
      values    = each.value.workflow_predicate_values
    }
  }

  destination {
    channel_id = each.value.channel_id
}

}