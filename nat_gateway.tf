resource "vcd_nsxt_nat_rule" "snat1" {
  org = var.vcd_org

  edge_gateway_id = data.vcd_nsxt_edgegateway.edgegateway.id

  name        = "SNAT_DEV"
  rule_type   = "SNAT"

  external_address         = "103.160.79.202"
  internal_address         = "172.20.10.0/24"
  snat_destination_address = "8.8.8.8"
  logging                  = false
}

resource "vcd_nsxt_nat_rule" "snat2" {
  org = var.vcd_org

  edge_gateway_id = data.vcd_nsxt_edgegateway.edgegateway.id

  name        = "SNAT_STG"
  rule_type   = "SNAT"

  external_address         = "103.160.79.202"
  internal_address         = "172.20.10.0/24"
  snat_destination_address = "8.8.8.8"
  logging                  = false
} 

resource "vcd_nsxt_nat_rule" "dnat" {
  org = var.vcd_org

  edge_gateway_id = data.vcd_nsxt_edgegateway.edgegateway.id

  name        = "DNAT"   
  rule_type   = "DNAT"

  external_address = "103.160.79.202"
  internal_address = "172.20.10.1"
  logging          = false
}