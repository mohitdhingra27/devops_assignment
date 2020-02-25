resource "azurerm_resource_group" "rg" {
  name     = "${var.id}-rg"
  location = "${var.location}"
  tags     = "${var.tags}"
}

resource "azurerm_virtual_network" "management" {
  name                = "${var.id}-vnet"
  address_space       = ["${var.vnet_cidr}"]
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  tags                = "${var.tags}"
}
