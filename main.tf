provider "aws" {
  region        = "us-east-1"
  access_key    = var.aws_access_key_id
  secret_key    = var.aws_secret_access_key
    
}

resource "aws_instance" "web" {
  ami           = "ami-020ef1e2f6c2cc6d6"
  instance_type = "t2.micro"
    tags = {
    Name = "HelloWorld"
  }
}

