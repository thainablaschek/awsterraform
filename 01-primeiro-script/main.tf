provider "aws"{
    access_key =  ""
    secret_key =  ""
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
