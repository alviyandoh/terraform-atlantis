terraform {
    source = "../../../../module/vpc"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    ip_cidr_range = "192.168.110.0/24"
}
