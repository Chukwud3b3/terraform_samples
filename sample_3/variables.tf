
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location"
  type        = string
  default     = "East US"
}

variable "hub_vnet_name" {
  description = "The name of the hub virtual network"
  type        = string
}

variable "hub_address_space" {
  description = "The address space for the hub virtual network"
  type        = string
}

variable "spoke_vnet_name_prefix" {
  description = "The prefix for spoke virtual network names"
  type        = string
}

variable "spoke_address_spaces" {
  description = "The address spaces for the spoke virtual networks"
  type        = list(string)
}
