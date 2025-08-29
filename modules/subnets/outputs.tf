output "public_subnet_ids" {
  description = "IDs de las subnets públicas"
  value = [for subnet in aws_subnet.public : subnet.id]
}

output "private_subnet_ids" {
  description = "IDs de las subnets privadas"
  value = [for subnet in aws_subnet.private : subnet.id]
}

output "public_route_table_id" {
  description = "ID de la route table pública"
  value = aws_route_table.public.id
}

output "private_route_table_ids" {
  description = "ID de la route table privada"
  value = aws_route_table.private.id
}
