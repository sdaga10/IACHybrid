

resource "azurerm_resource_group" "example" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

data "azurerm_resource_group" "existing" {
  name = "${var.resource_group}"
}

# Create a Data Factory
resource "azurerm_data_factory" "example" {
  name                = "${var.data_factory_name}"
  location            = "${var.location}"
  resource_group_name = "${data.azurerm_resource_group.existing.name}"
}

# Define Variables
variable "resource_group" {
  type    = string
  default = "myResourceGroup"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "data_factory_name" {
  type    = string
  default = "myDataFactory"
}
