# terraform-oci

## Configuration

The following variables are required:

- oci_compartment_id: OCI compartment
- oci_key_fingerprint: Fingerprint for PEM key
- oci_key_private_key_path: Path to private PEM key for signing API requests
- oci_oltp_database_acl: List of allowed IP addresses
- oci_oltp_database_password: Password for the OLTP database
- oci_region: OCI region, default `eu-amsterdam-1`
- oci_tenancy: OCI tenancy
- oci_user: OCI user
- source_ipv4_address: IP address of the personal laptop

## Retrieve ORDS IP address

If it is not possible to use SQL Developer Web, APEX with the access rules:
- Disable the access rules
- Run the below query in SQL Developer Web
- Update the access rules (or the variable `oci_oltp_database_acl`) with the IP address

````sql
SELECT sys_context('USERENV','IP_ADDRESS') FROM DUAL;
````
