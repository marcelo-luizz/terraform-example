#Lendo as variaveis definidas nos arquivos .hcl e exportando para execução
locals {
  project_vars = read_terragrunt_config(find_in_parent_folders("gcp-project.hcl"))
  region_vars = read_terragrunt_config(find_in_parent_folders("gcp-region.hcl"))
  project_id   = local.project_vars.locals.project_id
  gcp_region   = local.region_vars.locals.gcp_region
}

# Gerando um Provider do GCP
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "google" {
  region = "${local.gcp_region}"
  project = "${local.project_id}"
}
EOF
}

#Gerando Backend Remoto (bucket-gcs)
remote_state {
  backend = "gcs"
  config = {
    project  = local.project_id # Projeto GCP onde o bucket será criado
    location = local.gcp_region # Reigão onde o bucket será criado.
    bucket = "${local.project_id}-terraform-state" # Nome do Bucket (Lembrando que deve ser único).
    prefix = "${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
inputs = merge(
  local.project_vars.locals,
  local.region_vars.locals,
)
