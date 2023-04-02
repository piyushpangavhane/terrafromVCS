provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "MyBucket" {
  bucket = "pangavhane45676"


}

output "name" {
    value = aws_s3_bucket.MyBucket.arn
  
}