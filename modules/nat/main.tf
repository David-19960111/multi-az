resource "aws_eip" "nat" {
  count = length(var.public_subnet_ids)
  domain = "vpc"
  
  tags = {
    Name = "${var.name_prefix}-nat-eip-${count.index + 1}" 
  }
}

resource "aws_nat_gateway" "nat_gw" {
  count = length(var.public_subnet_ids)
  allocation_id = aws_eip.nat[count.index].id 
  subnet_id = var.public_subnet_ids[count.index]

  tags = {
    Name = "${var.name_prefix}-nat-${count.index + 1}"
  }

  depends_on = [ var.igw_id ]
}

resource "aws_route" "private_nat_gateway" {
  count = length(var.private_route_table_ids)
  route_table_id         = var.private_route_table_ids[count.index]
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = element(aws_nat_gateway.nat_gw[*].id, count.index % length(aws_nat_gateway.nat_gw))
}