provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
  access_key = "
  secret_key = "" 
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"      
    }
  }
}