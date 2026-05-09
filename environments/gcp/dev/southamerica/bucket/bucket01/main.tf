locals {
  project_vars = read_terragrunt_config(find_in_parent_folders("gcp-project.hcl"))
  region_vars = read_terragrunt_config(find_in_parent_folders("gcp-region.hcl"))
  env_vars    =  read_terragrunt_config(find_in_parent_folders("env_vars.hcl"))
}

terraform {
  source = "xxxxx"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  bucket_name=""
  storage_class=""
}
