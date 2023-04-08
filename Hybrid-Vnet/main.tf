
module "aws" {
  count = var.provision_aws_resource ? 1: 0
  source = "./modules/aws"
  cidr_block = var.cidr_block
  subnet_cidr = var.subnet_cidr
  az = var.az
}

module "azure" {
  count = var.provision_azure_resource ? 1 :0
  source = "./modules/azure"
  cidr_block = var.cidr_block
  subnet_cidr = var.subnet_cidr
  location = var.location
  resource_group_name = var.resource_group_name
}