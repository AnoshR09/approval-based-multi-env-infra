resource "aws_vpc" "multi-env-vpc" {
  cidr_block = var.cidr_block
  
  tags       = {
    Name = "var.name"
  }
  
}

resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.multi-env-vpc.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = var.availability_zone1
  
  tags              = {
    Name = "${var.name}-public-subnet1"
    Environment = var.environment
  }
  
}