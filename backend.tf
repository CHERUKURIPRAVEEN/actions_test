terraform {
  backend "s3" {
    bucket         = "277802554635-terraform-remote-backend"
    key            = "DEV/T1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "277802554635-terraform-remote-backend-lock"
  }
}