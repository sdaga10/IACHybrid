

provider "azurerm" {
  version = "=1.44.0"
  subscription_id = "<subscription_id>"
  tenant_id       = "<tenant_id>"
 
}

variable "region" {
  type = string
}

variable "rg_name" {
  type = string
}

data "azurerm_resource_group" "existing" {
  name = var.rg_name
}

resource "azurerm_data_factory" "datafactory" {
  name                = "testDataFactory"
  location            = var.region
  resource_group_name = var.rg_name
}

output "datafactory_id" {
  value = azurerm_data_factory.datafactory.id
}
