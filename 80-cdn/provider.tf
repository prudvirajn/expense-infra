terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket         = "raj-remote-state-dev"
    key            = "expense-cdn"
    region         = "us-east-1"
    dynamodb_table = "raj-locking-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}