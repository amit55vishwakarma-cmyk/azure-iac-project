rgs = {
  rg1 = {
    name     = "rg-amit"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg-neha"
    location = "centralindia"
  }
  rg3 = {
    name     = "rg-raghav"
    location = "centralindia"
  }

}

vnet = {
  vnet1 = {
    name                = "vnet11"
    resource_group_name = "rg-amit"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet1 = {
  subnet1 = {
    name                 = "linux-subnet"
    resource_group_name  = "rg-amit"
    virtual_network_name = "vnet11"
    address_prefixes     = ["10.0.1.0/24"]

  }

  subnet2 = {
    name                 = "windows-subnet"
    resource_group_name  = "rg-amit"
    virtual_network_name = "vnet11"
    address_prefixes     = ["10.0.2.0/24"]

  }
}

public_ip = {
  pip1 = {
    name                = "public_ip1"
    resource_group_name = "rg-amit"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "public_ip2"
    resource_group_name = "rg-amit"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

nic = {
  nic1 = {
    name                 = "nic11"
    location             = "centralindia"
    resource_group_name  = "rg-amit"
    virtual_network_name = "vnet11"
    pip_name             = "public_ip1"
    subnet_name          = "linux-subnet"

  }

  nic2 = {
    name                 = "nic22"
    location             = "centralindia"
    resource_group_name  = "rg-amit"
    virtual_network_name = "vnet11"
    subnet_name          = "windows-subnet"
    pip_name             = "public_ip2"
  }
}
