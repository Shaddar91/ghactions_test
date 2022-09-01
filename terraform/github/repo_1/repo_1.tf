module "repo_1" {
  source = "../../modules/github/create_repo/new/"
  gh_token = var.gh_token
  project_name = var.project_name
  choose_type = 0
}
