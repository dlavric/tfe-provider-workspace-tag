terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.65.2"
    }
  }
}

provider "tfe" {
  # Configuration options
}

resource "tfe_organization" "test-organization" {
  name  = "daniela-org"
  email = "admin@company.com"
}

resource "tfe_workspace" "test" {
  name         = "tfe-provider-workspace-tag"
  organization = tfe_organization.test-organization.name
  tags         = {
      environment = "dev"
      team_owner = "daniela"
  }
}