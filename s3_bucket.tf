provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "my_terraform_bucket" {

    bucket = "terraformbucket9130"

    tags = {

        Name = "my terraform bucket"
        Environment = "staging"
    }
  
}