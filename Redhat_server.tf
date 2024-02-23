provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "Redhat_server" {

    ami = "ami-05a5bb48beb785bf1"
    instance_type = "t2.micro"
  
}