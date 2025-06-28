output "vpc_id" {
  description = "ID de la VPC"
  value       = module.vpc.vpc_id
}

output "igw_id" {
  description = "ID del Internet Gateway"
  value       = module.vpc.igw_id
}

output "public_subnet_ids" {
  description = "IDs de las subnets públicas"
  value       = module.subnets.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs de las subnets privadas"
  value       = module.subnets.private_subnet_ids
}

output "public_route_table_id" {
  description = "Route table pública"
  value       = module.subnets.public_route_table_id
}

output "private_route_table_id" {
  description = "Route table privada"
  value       = module.subnets.private_route_table_id
}

output "nat_gateway_ids" {
  description = "IDs de los NAT Gateways"
  value       = module.nat.nat_gateway_ids
}

output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.ec2.id
}

output "private_ip" {
  description = "Private IP de la instancia EC2"
  value       = aws_instance.ec2.private_ip
}

output "alb_arn" {
  description = "ARN del Load Balancer"
  value       = aws_lb.this.arn
}

output "alb_dns_name" {
  description = "DNS público del Load Balancer"
  value       = aws_lb.this.dns_name
}

output "target_group_arn" {
  description = "ARN del Target Group"
  value       = aws_lb_target_group.this.arn
}

output "asg_name" {
  description = "Nombre del Auto Scaling Group"
  value       = aws_autoscaling_group.this.name
}

output "alb_sg_id" {
  description = "Security Group ID del ALB"
  value       = aws_security_group.alb_sg.id
}
