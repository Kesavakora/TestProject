terraform {
  backend "s3" {
    bucket                  = "terraform-s3-state-0223"
    key                     = "my-terraform-project"
    region                  = "us-east-1"
    #shared_credentials_file = "~/.aws/credentials"
  }
}


resource "aws_s3_bucket" "New_bucket" {
  bucket = "ENTER YOUR BUCKET NAME"
  acl    = "private"

  tags = {
    Name = "Terraform_StateFileBackup"
  }
}