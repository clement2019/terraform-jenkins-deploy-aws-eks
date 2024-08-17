terraform {
  backend "s3" {
    bucket = "jenkins-terraform-aws"
    key    = "jenkins/terraform.tfstate"
    region = "eu-west-2"
  }
}