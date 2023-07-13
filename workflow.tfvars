details2 = {
  workflow={

  policyname                    = "my_policy_for_workflow"
  account_id                    = 3930391
  notification_destination_name = "notification_destination"
  destination_type              = "EMAIL"
  destination_key               = "email"
  destination_value             = "sachinne071@gmail.com"

  channel_name    = "nofication-channel"
  channel_type    = "EMAIL"
  destination_id  = "newrelic_notification_destination.destination.id"
  channel_product = "IINT"
  channel_key     = "customDetail"
  channel_value   = "issue id - {{issueId}}"

  workflow_name                = "workflow-1"
  muting_rules_handling        = "NOTIFY_ALL_ISSUES"
  workflow_filter_name         = "FILTER-NAME"
  workflow_filter_type         = "FILTER"
  workflow_predicate_attribute = "labels.policyIds"
  workflow_predicate_operator  = "EXACTLY_MATCHES"
  workflow_predicate_values    = ["newrelic_alert_policy.my-policy.id"]
  channel_id                   = "newrelic_notification_channel.channel.id"

}
}