provider "azurerm" {

  version = "2.0.0"

  features {}

}

terraform {

  backend "azurerm" {

    resource_group_name = "VYDND"

    storage_account_name = "terraformbackend742"

    container_name = "terraformstatefiles"

    key = "terraform.state"

    }

}

resource "azurerm_resource_group" "RG" {
  name     = "VYDND-RG-Terra"
  location = "West Europe"
  tags = {
    Name = "VYDND"
    environment = "Test"
  }
}
module "network" {
  source               = "./Azure/network"
  vNetRg               = azurerm_resource_group.RG.name
  vNetAddressSpace     = "10.0.0.0/16"
  subnet1Address       = "10.0.1.0/24"
  subnet1              = "subnet1"
  vNetTags = {
    Name = "VYDND"
    environment = "Test"
  }

}
