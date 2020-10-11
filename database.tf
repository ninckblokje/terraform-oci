resource "oci_database_autonomous_database" "oltp_database" {
    admin_password = var.oci_oltp_database_password
    compartment_id = var.oci_compartment_id
    cpu_core_count = "1"
    data_storage_size_in_tbs = "1"
    db_name = "oltpdatabase"
    db_version = "19c"
    db_workload = "OLTP"
    is_free_tier = "true"
    license_model = "LICENSE_INCLUDED"
    whitelisted_ips = var.oci_oltp_database_acl
}
