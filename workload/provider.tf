terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}
provider "newrelic" {
  account_id = "3930391"
  api_key    = "NRAK-7Z0SHXV9L143Z1YMF0X2JM9DX8Z" # usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}