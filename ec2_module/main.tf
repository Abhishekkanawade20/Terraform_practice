#Defining provider, terraform backed, state locking and terraform resource in main file. 
provider "aws" {

  region = var.region
  
}

resource "aws_instance" "abhishek" {
    ami = var.ami
    instance_type = var.instance_type
}