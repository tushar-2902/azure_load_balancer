terraform {
  backend "azurerm" {
    resource_group_name   = "tushar-state-rg"
    storage_account_name  = "tusharstorage4201"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id =  "51984565-3b14-41c7-900f-cf01ff601798"
}