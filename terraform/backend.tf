terraform {
  backend "s3" {
    bucket         = "jobleads-remote-backend"
    key            = "Jobleads-backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "jobleads-state-lock"
  }
}