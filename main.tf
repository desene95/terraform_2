provider "azurerm" {
    version = "2.2.0"
    features {}
}

terraform {
    backend "azurerm"{
        resource_group_name  = "practice-tfstate"
        storage_account_name = "practicetfstatedame"
        container_name       = "tfstate"
        }
    }

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "test-dame-rg"
  location = "Canada central"
}

