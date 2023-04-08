
module "aws" {
  count = var.provision_aws_resource ? 1: 0
  source = "./modules/aws"
  creation_token = var.creation_token
}

module "azure" {
  count = var.provision_azure_resource ? 1 :0
  source = "./modules/azure"
  share_name = var.share_name
  rg_name = var.rg_name
  location =  var.location
}