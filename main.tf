provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  org                  = var.vcd_org
  url                  = var.vcd_url
  max_retry_timeout    = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

resource "vcd_vapp" "vapp1" {
  org = var.vcd_org
  vdc = var.vcd_vdc
  name = var.vcd_vapp1_name
}

resource "vcd_vapp" "vapp2" {
  org = var.vcd_org
  vdc = var.vcd_vdc
  name = var.vcd_vapp2_name
}

resource "vcd_vapp" "vapp3" {
  org = var.vcd_org
  vdc = var.vcd_vdc
  name = var.vcd_vapp3_name
}

#Create subnet for DEV
resource "vcd_vapp_network" "vappNet1" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet1-external"
  vapp_name          = data.vcd_vapp.vapp1.name
  gateway            = "172.20.10.1"
  prefix_length      = "24"
  dns1               = "172.20.10.1"
  dns2               = "172.20.10.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "172.20.10.51"
    end_address   = "172.20.10.100"
  }

}


resource "vcd_vapp_network" "vappNet2" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet2-internal"
  vapp_name          = data.vcd_vapp.vapp1.name
  gateway            = "172.20.20.1"
  prefix_length      = "24"
  dns1               = "172.20.20.1"
  dns2               = "172.20.20.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "172.20.20.51"
    end_address   = "172.20.20.100"
  }
}

resource "vcd_vapp_network" "vappNet3" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet3-internal"
  vapp_name          = data.vcd_vapp.vapp1.name
  gateway            = "172.20.30.1"
  prefix_length      = "24"
  dns1               = "172.20.30.1"
  dns2               = "172.20.30.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "172.20.30.51"
    end_address   = "172.20.30.100"
  }
}

resource "vcd_vapp_network" "vappNet4" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet1-external"
  vapp_name          = data.vcd_vapp.vapp3.name
  gateway            = "100.100.10.1"
  prefix_length      = "24"
  dns1               = "100.100.10.1"
  dns2               = "100.100.10.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "100.100.10.51"
    end_address   = "100.100.10.100"
  }

}


resource "vcd_vapp_network" "vappNet5" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet2-internal"
  vapp_name          = data.vcd_vapp.vapp3.name
  gateway            = "100.100.20.1"
  prefix_length      = "24"
  dns1               = "100.100.20.1"
  dns2               = "100.100.20.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "100.100.20.51"
    end_address   = "100.100.20.100" 
  }
}

resource "vcd_vapp_network" "vappNet6" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet3-internal"
  vapp_name          = data.vcd_vapp.vapp3.name
  gateway            = "100.100.30.1"
  prefix_length      = "24"
  dns1               = "100.100.30.1"
  dns2               = "100.100.30.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "100.100.30.51"
    end_address   = "100.100.30.100"
  }
}

resource "vcd_vapp_network" "vappNet7" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet1"
  vapp_name          = data.vcd_vapp.vapp2.name
  gateway            = "192.168.10.1"
  prefix_length      = "24"
  dns1               = "192.168.10.1"
  dns2               = "192.168.10.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "192.168.10.51"
    end_address   = "192.168.10.100"
  }

}


resource "vcd_vapp_network" "vappNet8" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet2"
  vapp_name          = data.vcd_vapp.vapp2.name
  gateway            = "192.168.20.1"
  prefix_length      = "24"
  dns1               = "192.168.20.1"
  dns2               = "192.168.20.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "192.168.20.51"
    end_address   = "192.168.20.100"
  }
}

resource "vcd_vapp_network" "vappNet9" {
  org = var.vcd_org
  vdc = var.vcd_vdc

  name               = "subnet3"
  vapp_name          = data.vcd_vapp.vapp2.name
  gateway            = "192.168.30.1"
  prefix_length      = "24"
  dns1               = "192.168.30.1"
  dns2               = "192.168.30.2"
  guest_vlan_allowed = true


  static_ip_pool {
    start_address = "192.168.30.51"
    end_address   = "192.168.30.100"
  }
}
