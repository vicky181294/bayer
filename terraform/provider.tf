terraform {
  required_version = ">= 1.3.2"

  backend "s3" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }
  }
}

provider "aws" {
  region     = var.aws_region
#   access_key = var.access_key
#   secret_key = var.secret_key
}