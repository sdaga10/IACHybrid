

provider "azurerm" {
  # version = "~>2.5"
  features {}
}

# Define variables
variable "location" {
  type        = string
  description = "Location for all resources."
  default     = "eastus2"
}

variable "data_factory_name" {
  type        = string
  description = "Name of the Data Factory."
  default     = "myDataFactory"
}

# Check if the resource group exists
data "azurerm_resource_group" "rg" {
  name = "myResourceGroup"
}

# Create a Data Factory
resource "azurerm_data_factory" "adf" {
  name                = var.data_factory_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg.name
}
