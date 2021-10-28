resource "azurerm_virtual_network" "vNet" {
  name                = var.vNetName
  location            = var.vNetLocation
  resource_group_name = var.vNetRg
  address_space       = var.vNetAddressSpace

  subnet {
    name           = var.subnet1
    address_prefix = var.subnet1Address
  }


  tags = var.vNetTags
}
