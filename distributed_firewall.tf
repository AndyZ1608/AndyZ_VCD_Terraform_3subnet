resource "vcd_nsxt_distributed_firewall" "t1" {
  org          = var.vcd_org
  vdc_group_id = data.vcd_vdc_group.vdc_group.id

  rule {
    name = "rule3"
    action      = "REJECT"
    ip_protocol = "IPV6"
  }


rule {
    name        = "rule4"
    action      = "ALLOW"
    ip_protocol = "IPV4"
    direction   = "OUT"
    source_groups_excluded      = false
    destination_groups_excluded = false
  }
  
}

