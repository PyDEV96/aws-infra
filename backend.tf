terraform {
  required_version = ">= 1.10.0"
  # 1. THE BACKEND (Where the state lives)
  backend "s3" {
    bucket  = "my-microservice-tfstate-unique-name"
    key     = "dev/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
    # Use native S3 locking if on Terraform 1.10+
    # Otherwise, use dynamodb_table = "terraform-lock-table"
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

