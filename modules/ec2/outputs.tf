output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.ec2.id
}

output "private_ip" {
  description = "Private IP de la instancia EC2"
  value       = aws_instance.ec2.private_ip
}
