resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)
  vpc_id = var.vpc_id 
  cidr_block = var.public_subnet_cidrs[count.index]
  availability_zone = var.azs[count.index]
  map_public_ip_on_launch = true 

  tags = {
    Name = "${var.name_prefix}-public-${var.azs[count.index]}"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidrs)
  vpc_id = var.vpc_id
  cidr_block = var.private_subnet_cidrs[count.index]
  availability_zone = var.azs[count.index]
  map_customer_owned_ip_on_launch = false 

  tags = {
    Name = "${var.name_prefix}-private-${var.azs[count.index]}" 
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id 

  tags = {
    Name = "${var.name_prefix}-public-rt" 
  }
}

resource "aws_route" "public_internet" {
  route_table_id = aws_route_table.public.id 
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = var.igw_id
}

resource "aws_route_table_association" "public" {
  count = length(aws_subnet.public)
  subnet_id = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id 
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.name_prefix}-private-rt"
  }
}