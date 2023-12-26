module "rg" {
  source = "../RG"
  RG     = var.RG
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../VNET"
  VNET       = var.VNET
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../SUBNET"
  SUBNET     = var.SUBNET
}
module "nic" {
  depends_on = [module.rg]
  source     = "../NIC"
  NIC        = var.NIC
}
module "publicip" {
  depends_on = [module.rg]
  source     = "../PUBLIC IP"
  PUBLICIP   = var.PUBLICIP
}
module "vm" {
  depends_on = [module.vnet]
  source     = "../VM"
  VM         = var.VM
}
module "mysql" {
  depends_on = [module.rg]
  source     = "../SERVER"
  MYSQL      = var.MYSQL
}
module "mysqldb" {
  depends_on = [module.mysql]
  source     = "../DB"
  MYSQLDB    = var.MYSQLDB
}
module "nsg" {
  depends_on = [module.subnet]
  source     = "../NSG"
  NSG        = var.NSG
}
module "bastion" {
  depends_on = [module.publicip.subnet]
  source     = "../BASTION"
  BASTION    = var.BASTION
}
module "sa" {
  depends_on = [module.rg]
  source     = "../SA"
  SA         = var.SA
}
# module "lb" {
#   depends_on = [module.publicip]
#   source     = "../LB"
#   LB         = var.LB
# }
