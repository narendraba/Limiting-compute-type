# prod.tfvars
region            = "ap-south-1"
vpc_cidr_block    = "10.2.0.0/16"
subnet_cidr_block = "10.2.1.0/24"
availability_zone = "ap-south-1a"
ami               = "ami-053b12d3152c0cc71"
instance_type     = "t2.medium"
#allowed_instance_types = [t2.medium, t3.medium]

