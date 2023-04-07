
module "aws" {
  source = "./modules/aws"
  creation_token = var.creation_token
}

module "azure" {
  source = "./modules/azure"
  share_name = var.share_name
  rg_name = var.rg_name
  location =  var.location
}