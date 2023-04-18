terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.36.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "rg"
        storage_account_name = "fabianofm1975"
        container_name       = "terraform"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "Migration"
  location = "eastus"
}
