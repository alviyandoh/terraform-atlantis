remote_state {
  backend = "gcs"
  config = {
    bucket = "terraform-batch-11-storage"
    prefix = "staging/${path_relative_to_include()}/terraform.tfstate"
  }
}

inputs = {
    project_id = "elevated-style-412702"
    region = "asia-southeast2"
    zone = "asia-southeast2-a"
    name = "${basename(get_terragrunt_dir())}"
    machine_type = "e2-micro"
}