# In variable file we defined the variable name that we have created in main.tf type of variable and description

variable "region" {                                # defined variable type and description here
    type = "string"
    description = "defined the type region"  
}

variable "ami" {
    type = "string"
    description = "Defined ami type"
  
}

variable "instance_type" {
    type = "string"
    description = "Defined the type of instance type"  
}

