resource "github_repository" "main" {
  name        = var.project_name
  description = var.project_description
  auto_init = true
  visibility = var.repo_type[var.choose_type]
  has_issues = true
  
}

resource "github_branch" "master" {
  repository = github_repository.main.name
  branch     = var.branch
  source_branch = "master"
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.main.node_id
  # also accepts repository name
  # repository_id  = github_repository.example.name

  pattern          = "master"
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    strict   = false
  }

}


resource "github_issue" "test" {
  repository       = github_repository.main.name
  title            = "My issue title"
  body             = "The body of my issue"
}