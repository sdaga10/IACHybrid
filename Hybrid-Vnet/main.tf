
module "aws" {
  source = "./modules/aws"
  cidr_block = var.cidr_block
  subnet_cidr = var.subnet_cidr
  az = var.az
}

module "azure" {
  source = "./modules/azure"
  cidr_block = var.cidr_block
  subnet_cidr = var.subnet_cidr
  location = var.location
  resource_group_name = var.resource_group_name
}