terraform {
  backend "s3" {
    bucket         = "week10-lohf-terraform"
    key            = "jenkins/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "state-log"
  }
}