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

output "alb_sg_id" {
  description = "Security Group ID del ALB"
  value       = aws_security_group.alb_sg.id
}
