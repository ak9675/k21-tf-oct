resource "azurerm_public_ip" "day8rg" {
  allocation_method       = "Static"
  location                = azurerm_resource_group.myrg.location
  name                    = var.user-inp
  resource_group_name     = azurerm_resource_group.myrg.name

}

resource "azurerm_resource_group" "myrg" {
  name = "finalday8rg"
  location = "eastus"
}

variable "user-inp" {
  description = "Enter name for public ip for terraform cloud"
}