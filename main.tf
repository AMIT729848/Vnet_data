resource "azurerm_resource_group" "rg1" {
  name     = "RG_Vinod1"
  location = "eastus"

}


resource "azurerm_virtual_network" "vnet" {
    depends_on = [ azurerm_resource_group.rg1 ]
  name                = "Vnet_todo"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "RG_Vinod1"
}