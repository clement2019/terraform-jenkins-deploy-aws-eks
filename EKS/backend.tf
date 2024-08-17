terraform {
  backend "s3" {
    bucket = "jenkins-terraform-aws"
    key    = "eks/terraform.tfstate"
    region = "eu-west-2"
  }
}