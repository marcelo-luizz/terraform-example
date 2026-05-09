locals {
  project_vars = read_terragrunt_config(find_in_parent_folders("gcp-project.hcl"))
  region_vars = read_terragrunt_config(find_in_parent_folders("gcp-region.hcl"))
  env_vars    =  read_terragrunt_config(find_in_parent_folders("env_vars.hcl"))
}

terraform {
  source = "git::https://github.com/marcelo-luizz/terraform-example.git//terraform-modules/gcp/gcs?ref=main"
}

# git::https://github.com/marcelo-luizz/terraform-modules.git//provider/gcp/modules/gcs?ref=main

# include {
#   path = find_in_parent_folders("root.hcl")
# }

# inputs = {
#   bucket_name="devopsbucket01-tes02"
#   storage_class="STANDARD"

# }
