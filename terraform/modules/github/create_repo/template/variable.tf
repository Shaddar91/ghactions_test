variable "gh_token" {
  type = string
}
variable "new" {
  type = bool
  default = true
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

variable "repo_type" {
  type = list(any)
  description = "use choose_type"
  default = ["public", "private", "internal"]
}

variable "choose_type" {
  type = number
  description = "0=public 1=private 2=internal"
}

variable "owner" {
  type = string
  description = ""
  default = null
}