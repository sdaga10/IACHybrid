

# Variables to be used in the Terraform code
variable "resource_group_name" {
  description = "The name of the resource group to be used to create the Data Factory"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

# Data source to check if the resource group already exists
data "azurerm_resource_group" "rg" {
  name = "${var.resource_group_name}"
}

# Create the resource group if it doesn't exist
resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"

  # Create the resource group only if it doesn't exist
  depends_on = ["data.azurerm_resource_group.rg"]
  lifecycle {
    create_before_destroy = true
  }
}

# Create the Data Factory
resource "azurerm_data_factory" "df" {
  name                = "${var.resource_group_name}-df"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"

  depends_on = ["azurerm_resource_group.rg"]
}
