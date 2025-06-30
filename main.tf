terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.65.2"
    }
  }
}

provider "tfe" {
  # Configuration options
}

resource "tfe_workspace" "test" {
  name         = "tfe-provider-workspace-tag-2"
  organization = "daniela-org"
  tags = {
    ITBA                     = "test ITBA"
    correlationId            = "APM0015224"
    owningTransactionCycleId = "14"
    primaryOwner             = "firstname lastname"
  }
}