provider "aws" {

    region = var.region
  
}

terraform {
  backend "s3" {
    bucket = "terraformbucket-22"
    key = "terraform.tfstate"
    region = "ap-south-1"  
    dynamodynamodb_table = "mytable"	  
  }
}
