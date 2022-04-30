provider "aws" {
  region = "us-east-1"
}

module "my_vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  vpc_id      = module.my_vpc.vpc_id
  subnet_cidr= var.subnet_cidr
}

module "my_ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  subnet_id=module.aws_subnet.main.id
  
}
  
  #add this file to the remote locatiion
