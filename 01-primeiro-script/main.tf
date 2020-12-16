provider "aws"{
    access_key =  "AKIAQ3CJLFTWVHHI7FBZ"
    secret_key =  "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"
    region = "us-east-1" 
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-thaina-blaschek"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}