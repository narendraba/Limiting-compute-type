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


module "compute" {
  source = "./compute"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]
}
