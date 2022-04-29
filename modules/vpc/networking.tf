resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  cidr_block = var.subnet_cidr
  vpc_id = var.vpc_id
}
