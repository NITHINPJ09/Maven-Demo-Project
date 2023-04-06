terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.ASI
  client_id       = var.ACI
  client_secret   = var.ACS
  tenant_id       = var.ATI
  features {}
}