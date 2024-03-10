# In variable file we defined the variable name that we have created in main.tf type of variable and description

variable "region" {                                # defined variable type and description here
    type = string
    description = "defined the type region"  
}

variable "instance_type" {
    type = string
    description = "Defined the type of instance type"  
}

variable "key_name" {
    type = string
    description = "Defined the key name type"
}

variable "tags" {
    type = map
    description = "Defined the type of tags"  
}

variable "ami" {
    type = number
    description = "Defined ami type"
  
}

variable "access_key" {
    default = number  
}

variable "secret_key" {
    default = number
  
}