variable "base_vcs_type" {
  description = "Should be one of github, github_enterprise, gitlab, gitlab_enterprise"
}

variable "base_vcs_token" {
  description = "Token for your VCS. Permission scope: https://docs.scalr.io/docs/provider_resource_scalr_vcs_provider#required"
  sensitive = true
}

variable "acc_id" {
  description = "ID of the account you want to create resources in"
}

variable "token" {
  description = "Scalr token with admin permissions. You may use the one from the PCFG."
  sensitive = true
}

variable "opa_version" {
  description = "OPA version used to create policy group. Should be one of available with current instance."
  default     = "0.32.0"
}

variable "policy_vcs-repo_identifier" {
  description = "'vcs_repo.indentifier' used to create policy group."
}

variable "policy_vcs-repo_path" {
  description = "'vcs_repo.path' used to create policy group. If your policy is located in the root folder, submit blank string (will default to repo root)."
}

variable "policy_vcs-repo_branch" {
  description = "'vcs_repo.branch' used to create policy group."
}

variable "ep_url" {
  description = "Endpoint URL used to create Scalr endpoint."
}

variable "module_vcs-repo_identifier" {
  description = "'vcs_repo.indentifier' used to create a module. Example: user/repo-name"
}

variable "module_vcs-repo_path" {
  description = "'vcs_repo.path' used to create a module. If your module is located in the root folder, submitting blank string MIGHT work. Example: modules/terraform-null-module"
}

variable "module_vcs-repo_tag-prefix" {
  description = "'vcs_repo.tag-prefix' used to create a module."
}

variable "module_existing_version_number" {
  description = "Specify the module semversion to use it in the data source"
}

variable "pcfg_gcp_credentials" {
  description = "Google service account key file in JSON format."
  sensitive   = true
}

variable "ws-vcs_vcs-repo_identifier" {
  description = "'vcs_repo.indentifier' used to create a workspace."
}

variable "ws-vcs_vcs-repo_branch" {
  description = "'vcs_repo.branch' used to create a workspace."
}

variable "ws-vcs_workdir" {
  description = "Working directory (path) used to create workspace. Submit blank if configuration is located in the repository root."
}