resource "aws_vpc" "hybrid_vpc" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "Hybrid VPC"
  }
}

resource "aws_subnet" "hybrid_subnet" {
  vpc_id = aws_vpc.hybrid_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az
  tags = {
    Name = "Hybrid Subnet"
  }
}