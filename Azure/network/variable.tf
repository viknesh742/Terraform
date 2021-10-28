variable "vNetName" {
  type        = string
  description = "Name of the Vnet"
}

variable "vNetLocation" {
  type        = string
  description = "location of the Vnet"
}

variable "vNetRg" {
  type        = string
  description = "Vnet Resource Group"
}

variable "vNetAddressSpace" {
  type        = string
  description = "Address space of Vnet"
}

variable "subnet1" {
  type        = string
  description = "Name of 1st Subnet"
}



variable "subnet1Address" {
  type        = string
  description = "Address of 1st Subnet"
}



variable "vNetTags" {
  type        = map(string)
  description = "Tags for Vnet"
}
