

provider "azurerm" {
    version = "2.2.0"
    features {}
}

data "azurerm_resource_group" "rg" {
  name = "${var.resource_group_name}"
}

resource "azurerm_data_factory" "mydatafactory" {
  name                = "${var.datafactory_name}"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"

  dynamic {
    content = <<CONTENT
      {
        "fileName": "${var.file_name}"
      }
    CONTENT
  }

}
