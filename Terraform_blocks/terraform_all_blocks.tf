# Here we will use all terrform block i.e provider, terraform, variable, resourse, data ,output.

# Provider block

provider "aws" {
    region = var.region
}

#Terraform Block
# terraform {
#     backend "s3" {
#         bucket = "abhishek91301428"
#         region = "ap-south-1"
#         key = "terraform.tfstate"
#     }
# }

#Resource block
resource "aws_instance" "Terraform-1" {
    ami = var.ami
    instance_type = var.instance_type
    tags = var.tags
    vpc_security_group_ids = []
    key_name = var.key_name
}

#Variable block
variable "region" {
    default = "ap-south-1"
    description = "we defined ec2 instance creation region"
}

variable "ami" {
    default = "ami-03bb6d83c60fc5f7c"
    description = "Defined instance ami id in variable block"
}

variable "instance_type" {
    default = "t2.micro"
    description = "Defined instance type value"  
}

variable "key_name" {
    default = "abhi_mumbai_dell"
    description = "Defined instance key"  
}

variable "tags" {
    type = map
    default = {
        Name = "Motogp"
        Family_Name = "UAT"
        Project = "Jarvis"
    }
  
}

# #Data block for security group, we are adding sg which is already existing resource.check "name"
data "vpc_security_group_ids" "Terraform-1" {
     id = var.vpc_security_group_ids
 }

# Output block
output "vpc_security_group_ids" {
     value = data.vpc_security_group_ids.terraform.id
 }
 