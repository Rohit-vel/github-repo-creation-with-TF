

resource "github_repository" "second-repo" {
  name        = "second-repo"
  description = "This is second repository"
  visibility = "public"
  auto_init = true
}

output "github-url" {
    value = github_repository.second-repo.html_url
}

resource "github_repository_file" "second-repo" {
  repository          = github_repository.second-repo.name
  branch              = "main"
  file                = "neo"
  content             = "this is practice file"
  commit_message      = "just try 1"
  commit_author       = "Terraform User"
  commit_email        = "rohitsaipatil@example.com"
  overwrite_on_create = true
}
