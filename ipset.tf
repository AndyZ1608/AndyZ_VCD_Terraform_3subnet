resource "vcd_nsxt_ip_set" "set1" {
  org = var.vcd_org

  edge_gateway_id = data.vcd_nsxt_edgegateway.edgegateway.id

  name        = var.vcd_ip1
  description = "IP Set for subnet of DEV"

  ip_addresses = [
    "172.20.10.0/24",
    "172.20.20.0/24",
    "172.20.30.0/24",
  ]
}

resource "vcd_nsxt_ip_set" "set2" {
  org = var.vcd_org

  edge_gateway_id = data.vcd_nsxt_edgegateway.edgegateway.id

  name        = var.vcd_ip2
  description = "Trusted IP Set for subnet of DEV"

  ip_addresses = [
    "172.20.10.4",
    "103.160.79.246",
    "103.160.79.202",
  ]
}
