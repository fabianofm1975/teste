terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.36.0"
    }

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_terraform" {
  name     = "Terraform"
  location = "eastus"
}

  }

backend "azurerm" {
        resource_group_name  = "rg_terraform"
        storage_account_name = "fabianofm1975"
        container_name       = "terraform"
        key                  = "terraform.tfstate"
    }
}
