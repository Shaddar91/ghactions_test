variable "gh_token" {
  type = string
}

variable "project_name" {
  type = string
  description = ""
  default = "repo_1"
}

variable "private" {
  type = string
  default = false
}