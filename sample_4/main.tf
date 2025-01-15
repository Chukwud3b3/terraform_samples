
resource "azurerm_resource_group" "loadbalancers" {
  name     = var.resource_group_name
  location = var.location
}

# Virtual Network and Subnet for Load Balancers
resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  location            = azurerm_resource_group.loadbalancers.location
  resource_group_name = azurerm_resource_group.loadbalancers.name
  address_space       = [var.vnet_address_space]
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.loadbalancers.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [var.subnet_address_prefix]
}

# Public IP for External Load Balancer
resource "azurerm_public_ip" "example" {
  name                = var.public_ip_name
  location            = azurerm_resource_group.loadbalancers.location
  resource_group_name = azurerm_resource_group.loadbalancers.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# External Load Balancer
resource "azurerm_lb" "external" {
  name                = var.external_lb_name
  location            = azurerm_resource_group.loadbalancers.location
  resource_group_name = azurerm_resource_group.loadbalancers.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "frontend"
    public_ip_address_id = azurerm_public_ip.example.id
  }
}

# Internal Load Balancer
resource "azurerm_lb" "internal" {
  name                = var.internal_lb_name
  location            = azurerm_resource_group.loadbalancers.location
  resource_group_name = azurerm_resource_group.loadbalancers.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "frontend"
    subnet_id            = azurerm_subnet.example.id
    private_ip_address_allocation = "Static"
    private_ip_address = var.internal_lb_private_ip
  }
}

# Backend Pool for External Load Balancer
resource "azurerm_lb_backend_address_pool" "external_pool" {
  name                = "external-backend-pool"
  loadbalancer_id     = azurerm_lb.external.id
  resource_group_name = azurerm_resource_group.loadbalancers.name
}

# Backend Pool for Internal Load Balancer
resource "azurerm_lb_backend_address_pool" "internal_pool" {
  name                = "internal-backend-pool"
  loadbalancer_id     = azurerm_lb.internal.id
  resource_group_name = azurerm_resource_group.loadbalancers.name
}

# Health Probe for Load Balancers
resource "azurerm_lb_probe" "example" {
  count               = 2
  name                = "${var.lb_probe_name}-${count.index + 1}"
  resource_group_name = azurerm_resource_group.loadbalancers.name
  loadbalancer_id     = element([azurerm_lb.external.id, azurerm_lb.internal.id], count.index)
  protocol            = "Tcp"
  port                = var.probe_port
  interval_in_seconds = 5
  number_of_probes    = 2
}
