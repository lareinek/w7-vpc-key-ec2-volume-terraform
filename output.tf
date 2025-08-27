output "pubblic-ip" {
    value = aws_instance.server.public_dns
}

output "vpc_id" {
  value = aws_vpc.my-vpc.id
}