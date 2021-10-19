provider "azurerm" {
  features {}
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
  source              = "Azure/network/azurerm"
  resource_group_name = azurerm_resource_group.example.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24""]
  subnet_names        = ["subnet1", "subnet2"]

  subnet_service_endpoints = {
    "subnet1" : ["VYDNDSN1"], 
    "subnet2" : ["VYDNDSN2"]
  }

  tags = {
    Name = "VYDND"
    environment = "Test"
  }

  depends_on = [azurerm_resource_group.RG]
}
