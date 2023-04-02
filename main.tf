
provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "Mybucket" {
  bucket = "pangavhane681996"

}