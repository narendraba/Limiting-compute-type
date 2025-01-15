variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

#variable "subnet_id" {
#  description = "The subnet ID for the instance"
#  type        = string
#}

#variable "security_group_id" {
#  description = "The security group ID for the instance"
#  type        = string
#}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}
