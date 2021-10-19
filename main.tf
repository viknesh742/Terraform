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
  source               = "Azure/network"
  vNetRg               = azurerm_resource_group.RG.name
  vNetAddressSpace     = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet1Address       = ["10.0.1.0/24"]
  subnet1              = ["subnet1"]
  subnet1Address       = ["10.0.2.0/24"]
  subnet1              = ["subnet2"]
  vNetTags = {
    Name = "VYDND"
    environment = "Test"
  }

  depends_on = [azurerm_resource_group.RG]
}
