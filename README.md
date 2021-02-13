# azurerm-vnet-create
Create VNet at azure with terraform


Example:

  provider "azurerm" {
    features {}
  }
  resource "azurerm_resource_group" "rg" {
    name     = local.rg-name
    location = local.rg-location
    tags     = local.commontags
  }

  module "network" {
    source              = "github.com/epuckop/azurerm-vnet-create"
    resource_group_name = azurerm_resource_group.rg.name
    address_space       = ["10.0.0.0/16"]
    vnet_name           = "Test-VNet"
    dns_servers         = ["8.8.8.8"]
    subnet_prefixes     = ["10.10.0.0/24", "10.20.0.0/24", "10.30.0.0/24"]
    subnet_names        = ["subnet1", "subnet2", "subnet3"]

    nsg_ids = {}

    subnet_service_endpoints = {}

    route_tables_ids = {}

    tags = local.commontags

    depends_on = [azurerm_resource_group.rg]
  }
