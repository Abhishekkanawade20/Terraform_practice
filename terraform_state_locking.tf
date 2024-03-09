# # Here we are see how to state lock you tfstate file and also see backend

# provider "aws" {
#     region = "ap-south-1"  
# }

# resource "aws_instance" "production_server" {
#     ami = var.ami
#     instance_type = var.instance_type
#     tags = var.tags      
# }

# variable "ami" {
#     default = "ami-03bb6d83c60fc5f7c"
#     description = "defined ami id"  
# }

# variable "instance_type" {
#     default = "t2.micro"  
# }

# variable "tags" {
#     type = map
#     default = {
#     Name = "production_server"
#     Environment = "production"  
# }
# }

# terraform {
#     backend "s3" {
#         bucket = "abhishkedell"
#         key    = "terraform.tfstate"
#         region     = "ap-south-1"
#    dynamodb_table  = "dynamodb-state-locking"
#     }
# }