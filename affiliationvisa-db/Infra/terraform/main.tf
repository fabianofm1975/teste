terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }

provider "azurerm" {
  features {}
}

backend "azurerm" {
        resource_group_name  = "rg_terraform"
        storage_account_name = "fabianofm1975"
        container_name       = "terraform"
        key                  = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "rg_terraform" {
  name     = "Terraform"
  location = "eastus"
}

  }