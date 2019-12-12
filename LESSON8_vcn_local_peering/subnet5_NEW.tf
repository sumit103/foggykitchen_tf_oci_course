resource "oci_core_subnet" "FoggyKitchenBackendSubnet" {
  cidr_block = "192.168.1.0/24"
  display_name = "FoggyKitchenBackendSubnet"
  dns_label = "FoggyKitchenN5"
  prohibit_public_ip_on_vnic = true
  compartment_id = oci_identity_compartment.ExternalCompartment.id
  vcn_id = oci_core_virtual_network.FoggyKitchenVCN2.id
  route_table_id = oci_core_route_table.FoggyKitchenLPG2RouteTable.id
  dhcp_options_id = oci_core_dhcp_options.FoggyKitchenDhcpOptions2.id
  security_list_ids = [oci_core_security_list.FoggyKitchenSSHSecurityList2.id,oci_core_security_list.FoggyKitchenICMPecurityList2.id]
}

