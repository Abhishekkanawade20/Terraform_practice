variable "region" {
    type = string
    description = "Defining bucket type"
  
}

variable "bucket" {
    type = string
    description = "defining type of bucket" 
}

variable "tags" {
    type = map(string)
    description = "defining type of tags"  
}