
module "aws" {
  count = var.provision_aws_resource ? 1: 0
  source = "./modules/aws"
  cluster_name = var.cluster_name
  node_group_name = var.node_group_name
  node_group_max_size        = var.node_group_max_size
  node_group_min_size = var.node_group_min_size
  subnet_ids = var.subnet_ids
}

module "azure" {
  count = var.provision_azure_resource ? 1 :0
  source = "./modules/azure"
  name = var.name
  location = var.location
  
}
