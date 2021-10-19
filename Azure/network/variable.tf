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
  type        = list
  description = "Address space of Vnet"
}

variable "subnet1" {
  type        = string
  description = "Name of 1st Subnet"
}

variable "subnet2" {
  type        = string
  description = "Name of 2nd subnet"
}

variable "subnet1Address" {
  type        = string
  description = "Address of 1st Subnet"
}

variable "subnet2Address" {
  type        = string
  description = "Address of 2nd Subnet"
}

variable "vNetTags" {
  type        = map(string)
  description = "Tags for Vnet"
}
