
data "vcd_vapp" "vapp1" {
  name = var.vcd_vapp1_name
  org = var.vcd_org
  vdc = var.vcd_vdc
}

data "vcd_vapp" "vapp2" {
  name = var.vcd_vapp2_name
  org = var.vcd_org
  vdc = var.vcd_vdc
}

data "vcd_vapp" "vapp3" {
  name = var.vcd_vapp3_name
  org = var.vcd_org
  vdc = var.vcd_vdc
}  

data "vcd_vdc_group" "vdc_group" {
  org  = var.vcd_org
  name = var.vcd_group
}

data "vcd_nsxt_edgegateway" "edgegateway" {
  org  = var.vcd_org
  owner_id = data.vcd_vdc_group.vdc_group.id
  name = var.vcd_edge
}

data "vcd_org_vdc" "vdc1" {
  name = var.vcd_vdc
}

