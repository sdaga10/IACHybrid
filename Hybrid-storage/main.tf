
module "aws" {
  source = "./modules/aws"
  bucket_name = var.bucket_name

}

module "azure" {
  source = "./modules/azure"
  storage_name = var.storage_name
  resource_group_name = var.resource_group_name
  location =  var.location
}