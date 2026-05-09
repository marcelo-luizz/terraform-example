locals {
  project_vars = read_terragrunt_config(find_in_parent_folders("gcp-project.hcl"))
  region_vars = read_terragrunt_config(find_in_parent_folders("gcp-region.hcl"))
  env_vars    =  read_terragrunt_config(find_in_parent_folders("env_vars.hcl"))
}

terraform {
  source = "/home/marcelo/Desktop/terraform-example/terraform-modules/gcp/gcs"
}

# git::https://github.com/marcelo-luizz/terraform-modules.git//provider/gcp/modules/gcs?ref=main

include {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  bucket_name="devopsbucket01-test"
  storage_class="STANDARD"
}
