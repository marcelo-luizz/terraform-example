locals {
  project_vars = read_terragrunt_config(find_in_parent_folders("gcp-project.hcl"))
  region_vars = read_terragrunt_config(find_in_parent_folders("gcp-region.hcl"))
  env_vars    =  read_terragrunt_config(find_in_parent_folders("env_vars.hcl"))
}

terraform {
  source = "git::https://github.com/marcelo-luizz/terraform-example.git//terraform-modules/gcp/compute-engine?ref=main"
}

include {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  instance_name="devopsinstance01-hml"
  machine_type="e2-standard-2"
  zone="southamerica-east1-a"
  image="ubuntu-2204-lts"
}