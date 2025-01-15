variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "ap-south-1a"  # Change this to your desired availability zone
}


variable "allowed_instance_types" {
  description = "The type of instance to use"
  type        = list(string)
}

variable "instance_type" {
  description = "The instance type to validate"
  type        = string
}

locals {
  is_valid_instance_type = contains(var.allowed_instance_types, var.instance_type)
}

resource "null_resource" "validate_instance_type" {
  provisioner "local-exec" {
    when    = "create"
    command = "test ${local.is_valid_instance_type} = true || (echo 'Invalid instance type' && exit 1)"
  }
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-053b12d3152c0cc71"
}
