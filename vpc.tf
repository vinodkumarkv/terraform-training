# resource "aws_vpc" "mainvpc" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     Name = "vinod_vpc"
#   }
# }
# resource "aws_subnet" "subnet" {
#     depends_on = [aws_vpc.mainvpc]
#     vpc_id     = aws_vpc.mainvpc.id
#     cidr_block = "10.0.1.0/24"
#     availability_zone = var.az
#      tags = {
#     Name = "vinod_subnet"
#   }
# }
