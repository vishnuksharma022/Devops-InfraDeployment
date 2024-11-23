Devops-RG = {
  rg-1 = {
    resource_group_name = "devops-Rg"
    location            = "eastus"
  }

}

azure-vnet = {
  devops-vnet = {
    virtual_network_name = "Devops-Vnet"
    ddress_space         = ["10.0.0.0/16"]
    resource_group_name  = "devops-Rg"
    location             = "eastus"
  }

}


azure-subnet = {
  subnet-1 = {
    subnet               = "front-end"
    virtual_network_name = "Devops-Vnet"
    address_prefixes     = ["10.0.0.1/24"]
    resource_group_name  = "devops-Rg"

  }
    subnet-2 = {
    subnet               = "back-end"
    virtual_network_name = "Devops-Vnet"
    address_prefixes     = ["10.0.0.2/24"]
    resource_group_name  = "devops-Rg"
  }
}
