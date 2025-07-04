output "vpc_id" {
  description = "ID de la VPC creada"
  value = aws_vpc.main.id
}

output "igw_id" {
  description = "ID del Internet Gateway creado"
  value = aws_internet_gateway.this.id
}
