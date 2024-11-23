module "RG" {
  source    = "../RG"
  Devops-RG = var.Devops-RG
}

module "vnet" {
  depends_on = [ var.Devops-RG ]
  source = "../Vnet-subnet"
  azure-vnet= var.azure-vnet
  azure-subnet= var.azure-subnet
}

module "nic" {
  depends_on = [ var.azure-subnet ]
  source = "../Nic-VM"
  azure-nic= var.azure-nic 
}