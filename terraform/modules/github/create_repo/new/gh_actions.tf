# resource "github_actions_runner_group" "main" {
#   name                    = github_repository.main.name
#   visibility              = "selected"
#   selected_repository_ids = [github_repository.main.repo_id]
# }

# resource "github_repository_file" "gh_actions_master" {
#   repository          = github_repository.main.name
#   branch              = "master"
#   file                = "git/workflow/main.yml"
#   content             = file("files/master_actions/main.yml")
#   commit_message      = "Managed by Terraform"
#   commit_author       = "Terraform User"
#   commit_email        = "terraform@terraform.com"
#   overwrite_on_create = var.overwrite_on_create
# }