terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "288019e6-c19f-4b8f-9f5f-b66109a2882d"

}