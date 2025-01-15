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
  default     = "us-west-2a"  # Change this to your desired availability zone
}


variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-053b12d3152c0cc71"
}
