provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "compute" {
  ami           = var.ami
  instance_type = var.instance_type
  allowed_instance_types = var.allowed_instance_types
  #subnet_id     = var.subnet_id
  #security_groups = [var.security_group_id]
  tags = {
    Name = "compute-instance"
  }
}
