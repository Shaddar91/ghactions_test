variable "gh_token" {
  type = string
}
variable "project_name" {
  type = string
  description = ""
}
variable "project_description" {
  type = string
  description = ""
  default = null
}


variable "branch" {
  type = string
  description = ""
  default = "staging"
}

variable "path" {
  type = string
  description = ""
  default = "/"
}

variable "repo_type" {
  type = list(any)
  description = "use choose_type"
  default = ["public", "private", "internal"]
}

variable "choose_type" {
  type = number
  description = "0=public 1=private 2=internal"
}