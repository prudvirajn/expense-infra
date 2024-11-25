terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }

  backend "s3" {
    bucket         = "raj-remote-state-dev"
    key            = "expense-eks"
    region         = "us-east-1"
    dynamodb_table = "raj-locking-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}