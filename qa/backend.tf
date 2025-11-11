terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "qa/terraform.state"
    bucket         = "cloudsroot-terraform-backend"
    region         = "us-west-2"
    dynamodb_table = "cloudsroot-terraform-tooling-state-locking"
  }
}
