resource "github_repository_file" "main" {
  repository          = github_repository.main.name
  branch              = "master"
  file                = ".gitignore"
  content = file("files/gitignore")
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@terraform.com"
  overwrite_on_create = var.overwrite_on_create
}