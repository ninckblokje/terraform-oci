variable "oci_compartment_id" {}
variable "oci_key_fingerprint" {}
variable "oci_key_private_key_path" {}
variable "oci_region" { default = "eu-amsterdam-1" }
variable "oci_tenancy" {}
variable "oci_user" {}

variable "oci_oltp_database_acl" { type = list(string) }
variable "oci_oltp_database_password" {}

provider "oci" {
    tenancy_ocid     = var.oci_tenancy
    user_ocid        = var.oci_user
    fingerprint      = var.oci_key_fingerprint
    private_key_path = var.oci_key_private_key_path
    region           = var.oci_region
}
