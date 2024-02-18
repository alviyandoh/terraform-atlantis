terraform {
    source = "../../../../module/instances"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    tags = ["http-server"]
    network = "default"
    subnetwork = "default"
}