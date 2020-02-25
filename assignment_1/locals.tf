locals {
  workspace_split = split("+", terraform.workspace)
  location        = element(local.workspace_split, 0)
  environment    = element(local.workspace_split, 1)
}
