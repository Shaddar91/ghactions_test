variable "gh_token" {
  type = string
}

variable "project_name" {
  type = string
  description = ""
  default = "open_zeppelin"
}

variable "private" {
  type = string
  default = false
}