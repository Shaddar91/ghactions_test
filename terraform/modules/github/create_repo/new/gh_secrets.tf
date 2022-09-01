resource "github_actions_secret" "example_secret" {
  repository       = github_repository.main.name
  secret_name      = "example_secret_na1me"
  plaintext_value  = "zec"
}

resource "github_actions_secret" "example_secret1" {
  repository       = github_repository.main.name
  secret_name      = "example_secret_name"
  encrypted_value  = base64sha512("kec")
}