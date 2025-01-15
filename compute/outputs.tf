# outputs.tf
output "instance_id" {
  value = aws_instance.compute.id
}
