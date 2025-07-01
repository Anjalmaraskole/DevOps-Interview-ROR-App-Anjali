resource "aws_ecr_repository" "rails_app_repo" {
  name = "rails-app-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

