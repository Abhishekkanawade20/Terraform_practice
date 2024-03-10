variable "region" {
type = string  
description = "defining region type"
}

variable "cidr_block" {
    type = string
    description = "defining variable type"  
}

variable "instance_tenancy" {
    type = string
    description = "defining instance tenacy type"  
}

variable "tags" {
    type = map
    description = "defining tags type"  
}