# Here we are creating security group and whitlisting some ports

provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "My_instance1" {
    ami = "ami-03bb6d83c60fc5f7c"
    instance_type = "t2.micro"  
}

#Here using security group resource for whitelisting ports.
resource "aws_security_group" "My_instance1_SG" {
    name = "My instance 1 security group"
    description = "whitlisting port"

# Here we are whitelisting 80 port

    ingress {                              
        from_port = 80
        protocol = "tcp"
        to_port = 80
        cidr_blocks = [ "0.0.0.0/0" ]
    }

# Here we are whitelisting 22 port

ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [ "0.0.0.0/0" ]
}




    

  
}
