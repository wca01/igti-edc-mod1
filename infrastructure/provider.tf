provider "aws" {
  region = var.aws-region
}

# centralizar arquivo de controle estado terraform
terraform {
  backend "s3" {
      bucket = "terraform-stage-igti-wca"
      key = "state/igti/edc/mod1/terraform.tfstate"
      region = "us-east-2"
  }
}