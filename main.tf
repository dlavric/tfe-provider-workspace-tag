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

resource "tfe_workspace" "test" {
  name         = "test-tfe-workspace-tag"
  organization = "daniela-org"
  tags         = {
      environment = "dev"
      team_owner = "daniela"
  }
}