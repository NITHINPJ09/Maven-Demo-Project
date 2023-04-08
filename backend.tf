terraform {
  backend "azurerm" {
    resource_group_name  = "AI-102"
    storage_account_name = "mavenprojectsa2023"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}
