terraform {
  required_version   = ">= 0.13.1"
  required_providers {
    aws              = {
      source         = "hashicorp/aws"
      version        = "~> 4.23.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}
resource "aws_instance" "teste" {
  ami                = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
    tags = {
    Name             = "HelloWorld"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  tags = {
    Name        = "My bucket"
  }
}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

