#Defining provider, terraform backed, state locking and terraform resource in main file. 
provider "aws" {

  region = var.region
  
}
terraform {
  backend "s3" {
    bucket = "terraformbucket-21"
    region = "ap-south-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform_table"
  }
}

resource "aws_instance" "abhishek" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    tags = var.tags 
}