resource "aws_s3_bucket" "log_bucket" {
  bucket = "kesava-tf-log-bucket"
  acl    = "log-delivery-write"
  
tags = {
    name = "kesava"
    environment = "Prod"
    target_prefix = "log/"
  }
  versioning {
    enabled = true
  }
}