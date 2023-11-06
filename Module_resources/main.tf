resource "newrelic_alert_policy" "foo" {
  name = "3-November"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}