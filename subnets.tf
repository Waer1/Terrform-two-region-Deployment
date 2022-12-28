resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.puplic_subnet_cidr_1
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.puplic_subnet_cidr_2
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_1
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_2
}