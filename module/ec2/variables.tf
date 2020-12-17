variable "ami" {
    description = "ami name"
  
}

variable "instance_type" {
  description = "instance type"
}

output "ec2Output" {
   value = aws_instance.demo_ec2
}