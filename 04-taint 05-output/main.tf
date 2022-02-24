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

resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.b.id}"
  key    =  "Hello-world.txt"
  source = "arquivo.txt"
  etag = "${md5(file("arquivo.txt"))}"
}

output "bucket" {
  value = "${aws_s3_bucket.b.id}"
}

output "etag" {
  value = "${aws_s3_bucket_object.object.etag}"
}
