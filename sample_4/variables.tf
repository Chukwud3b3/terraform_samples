
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
}

variable "public_ip_name" {
  description = "The name of the public IP address"
  type        = string
}

variable "external_lb_name" {
  description = "The name of the external load balancer"
  type        = string
}

variable "internal_lb_name" {
  description = "The name of the internal load balancer"
  type        = string
}

variable "internal_lb_private_ip" {
  description = "The private IP for the internal load balancer"
  type        = string
}

variable "lb_probe_name" {
  description = "The base name for the load balancer probes"
  type        = string
}

variable "probe_port" {
  description = "The port used for health probes"
  type        = number
}
