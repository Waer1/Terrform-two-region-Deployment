resource "aws_route_table" "puplic" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route" "puplicRoute" {
  route_table_id         = aws_route_table.puplic.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.puplic.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.puplic.id
}



resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route" "privateRoute" {
  route_table_id         = aws_route_table.puplic.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.mygateway.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private.id
}
