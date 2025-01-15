terraform {
  backend "s3" {
    bucket         = "demo-workspace"
    key            = "xxxxx/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "my-table"
  }
}
