provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "compute" {
  
  
  #allowed_instance_types = var.allowed_instance_types
  instance_type = var.instance_type
  ami           = var.ami
  #subnet_id     = var.subnet_id
  #security_groups = [var.security_group_id]
  tags = {
    Name = "compute-instance"
  }
}
