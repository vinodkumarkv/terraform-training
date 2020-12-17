resource "aws_instance" "demo_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "ec2_instance"
  }
  vpc_security_group_ids = [aws_security_group.ec2_security.id]
  depends_on             = [aws_security_group.ec2_security]
  key_name               = "vinod_keypair"
}


resource "aws_security_group" "ec2_security" {
  name        = "ec2_security"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}