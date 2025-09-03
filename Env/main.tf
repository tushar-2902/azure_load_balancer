module "rg" {
  source = "../Module/resource"
  rg-name = "tushar-rg"
  location = "france central"
}

module "ip" {
  source = "../Module/public-ip"
  depends_on = [ module.rg ]
  rg-name = "tushar-rg"
  location = "france central"
}

module "vnet" {
  depends_on = [ module.rg ,module.ip ]
  source = "../Module/vnet"
  nsg-name = "tushar-nsg"
  rg-name = "tushar-rg"
  vnet-name = "tushar-vnet"
  location = "france central"

}

module "sb" {
    depends_on = [ module.vnet ]
  source = "../Module/subnet"
  sb-name = "tushar-sb"
  rg-name = "tushar-rg"
  vn-name = "tushar-vnet"
}

module "kv" {
  depends_on = [ module.rg ]
  source = "../Module/keyvault"
  kv-name = "tushar-kv"
  rg-name = "tushar-rg"
  location = "france central"

}

module "vm" {
  depends_on = [ module.sb,module.kv ]
  source = "../Module/vm"
  nic-name = "tushar-nic"
  vm-name = "tushar-vm"
  sb-name = "tushar-sb"
  rg-name = "tushar-rg"
  location = "france central"
  vn-name = "tushar-vnet"
  kv-name = "tushar-kv"
}

module "mysql" {
  depends_on = [ module.rg]
  source = "../Module/mysql"
  rg-name = "tushar-rg"
  location = "france central"
  data-name = "tushar-data"
}

module "bas" {
    depends_on = [ module.sb,module.ip]
    source = "../Module/bastion"
    bas-name = "tushar-bas"
    sb-name = "tushar-sb"
    vn-name = "tushar-vnet"
   rg-name = "tushar-rg"
   location = "france central"
}

module "load" {
depends_on = [ module.bas ]
  source = "../Module/loadbalancer"
  lb-name = "tushar-lb"
  sb-name = "tushar-sb"
  vn-name = "tushar-vnet"
  rg-name = "tushar-rg"
   location = "france central"
}


