resource "azurerm_public_ip" "day8rg" {
  allocation_method       = "Static"
  location                = data.azurerm_resource_group.datarg.location
  name                    = var.user-inp
  resource_group_name     = data.azurerm_resource_group.datarg.name

}

data "azurerm_resource_group" "datarg" {
name = "finalrg"
} 

variable "user-inp" {
  description = "Enter name for public ip"
}