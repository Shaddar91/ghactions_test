resource "github_repository" "template" {
  name        = var.project_name
  description = var.project_description

  visibility = var.repo_type[var.choose_type]  
  template {
    owner      =  var.owner
    repository =  var.template_repository
  }
}