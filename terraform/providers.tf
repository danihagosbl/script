terraform {
  required_providers {
    azapi = {
      source = "Azure/azapi"
      version = "1.13.1"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.104.0"
    }
  }
}

provider "azapi" {
  default_location = "ukwest"
  default_tags = {
    team = "Azure deployments"
  }
}

provider "azurerm" {
  features {}
}