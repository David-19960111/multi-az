output "nat_gateway_ids" {
  description = "IDs de los NAT Gateways creates"
  value = aws_nat_gateway.nat_gw[*].id 
}