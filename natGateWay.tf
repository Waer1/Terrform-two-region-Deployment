resource "aws_eip" "nat_ip" {
}

resource "aws_nat_gateway" "mygateway" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public1.id
}