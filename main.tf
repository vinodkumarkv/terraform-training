
terraform {
  backend "s3" {
    bucket = "vinods3tsstate"
    key = "dev"
     region = "us-east-1"
  }
}

module "training" {
  source  = "vinodkumarkv/trainingEC2/aws"
  version = "0.0.1"
  # source        = "./module/ec2"
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
}


output "ec2_ipadddress" {
   value = module.training.ec2Output
}

data "aws_availability_zones" "azs" {
  state = "available"
}

output "azDetails" {
  value = data.aws_availability_zones.azs.names
}