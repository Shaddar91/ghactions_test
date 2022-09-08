resource "github_organization_project" "project" {
  name = "d2l"
  body = "This is a organization project."
}

resource "github_membership" "membership_for_some_user" {
  username = "Shaddar91"
  role     = "admin"
}

resource "github_project_column" "column" {
  project_id = github_organization_project.project.id
  name       = "Backlog"
}

resource "github_project_card" "card" {
  column_id = github_project_column.column.column_id
  note        = "## Unaccepted 👇"
}

resource "github_repository" "main" {
  name         = var.project_name
  description = var.project_description
  auto_init  = true
  # private = false
  visibility = var.repo_type[var.choose_type]
  # pages {
  #   source {
  #     branch = var.branch
  #     path   = var.path
  #   }
  # }
}

resource "github_branch" "master" {
  repository    = github_repository.main.name
  branch      = var.branch
  source_branch = "master"
}
