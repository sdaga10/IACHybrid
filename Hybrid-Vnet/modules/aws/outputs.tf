output "vpc_id" {
  value = aws_vpc.hybrid_vpc.id
}

output "subnet_id" {
  value = aws_subnet.hybrid_subnet.id
}