terraform {
  backend "s3" {
    bucket         = "demo-workspace"
    key            = "Limiting-compute-type/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "my-table"
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source             = "./vpc"
  cidr_block         = "10.0.0.0/16"
  subnet_cidr_block  = "10.0.1.0/24"
  availability_zone  = "ap-south-1a"  # Change this to your desired availability zone
}

module "compute" {
  source = "./compute"
  ami           = var.ami
  instance_type = var.instance_type
  allowed_instance_types = var.allowed_instance_types
  #subnet_id     = var.subnet_id
 # security_groups = [var.security_group_id]
}


